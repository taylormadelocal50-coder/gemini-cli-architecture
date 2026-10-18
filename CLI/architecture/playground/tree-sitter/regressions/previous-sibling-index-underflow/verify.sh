#!/usr/bin/env bash
set -euo pipefail

readonly TEST_COMMIT="267f79926d6020e22d70581cc4119f1143b50c72"
readonly FIX_COMMIT="ab7c9d470b63d098cf3d66d35ebced4d622b23bf"
readonly TEST_NAME="test_tree_cursor_previous_sibling_with_many_comments"
readonly WORK_DIR="$(mktemp -d)"
readonly BEFORE_LOG="$WORK_DIR/before-fix.log"
readonly AFTER_LOG="$WORK_DIR/after-fix.log"

cleanup() {
  rm -rf "$WORK_DIR"
}
trap cleanup EXIT

for command in git cargo cc; do
  command -v "$command" >/dev/null || {
    printf 'Required command not found: %s\n' "$command" >&2
    exit 127
  }
done

git clone --quiet --filter=blob:none https://github.com/tree-sitter/tree-sitter.git "$WORK_DIR/tree-sitter"
git -C "$WORK_DIR/tree-sitter" fetch --quiet \
  https://github.com/mgsloan/tree-sitter.git \
  fix-previous-sibling-index-underflow

(
  cd "$WORK_DIR/tree-sitter"
  cargo xtask fetch-fixtures
  cargo xtask generate-fixtures
)

git -C "$WORK_DIR/tree-sitter" switch --quiet --detach "$TEST_COMMIT"
set +e
(
  cd "$WORK_DIR/tree-sitter"
  cargo test -p tree-sitter-cli --lib "$TEST_NAME"
) >"$BEFORE_LOG" 2>&1
before_status=$?
set -e

if [[ $before_status -eq 0 ]]; then
  printf 'Expected the regression test to fail at %s, but it passed.\n' "$TEST_COMMIT" >&2
  cat "$BEFORE_LOG" >&2
  exit 1
fi

if ! grep -Fq 'assertion `left == right` failed: child 256' "$BEFORE_LOG"; then
  printf 'The test failed for an unexpected reason at %s.\n' "$TEST_COMMIT" >&2
  cat "$BEFORE_LOG" >&2
  exit 1
fi

git -C "$WORK_DIR/tree-sitter" switch --quiet --detach "$FIX_COMMIT"
(
  cd "$WORK_DIR/tree-sitter"
  cargo test -p tree-sitter-cli --lib "$TEST_NAME"
) >"$AFTER_LOG" 2>&1

printf 'Verified regression: FAIL at %s\n' "$TEST_COMMIT"
printf 'Verified fix:       PASS at %s\n' "$FIX_COMMIT"
