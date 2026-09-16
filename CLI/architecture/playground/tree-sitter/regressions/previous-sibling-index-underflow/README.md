# Previous-sibling index underflow

## Summary

`TreeCursor::goto_previous_sibling()` can return `false` at a valid child when the internal `child_index` is a multiple of 256. The defect is exposed by a parent with more than 256 visible extra children, such as 300 Rust comments.

The failing guard narrows the 32-bit unsigned index to eight signed bits:

```c
(int8_t)self->child_index == -1
```

That test incorrectly treats values whose low byte is `0xff` as the underflow sentinel. The proposed correction compares the complete value with the actual sentinel:

```c
self->child_index == UINT32_MAX
```

## Pinned upstream revisions

| Stage | Revision | Expected result |
|---|---|---|
| Regression test only | `267f79926d6020e22d70581cc4119f1143b50c72` | Test fails while traversing backward through 300 comment nodes |
| Test plus fix | `ab7c9d470b63d098cf3d66d35ebced4d622b23bf` | Test passes |

The upstream comparison is [tree-sitter/master…mgsloan/fix-previous-sibling-index-underflow](https://github.com/tree-sitter/tree-sitter/compare/master...mgsloan:tree-sitter:fix-previous-sibling-index-underflow?expand=1).

## Verification result

The pinned sequence was reproduced locally with Rust 1.90.0. At the test-only commit, traversal failed exactly at `child 256` because `goto_previous_sibling()` returned `false` instead of `true`. At the fix commit, the same focused test passed: `1 passed; 0 failed`.

## Reproduce

Requirements: Git, Rust 1.90, Cargo, and a C build toolchain.

```bash
bash verify.sh
```

The script clones Tree-sitter into a temporary directory, confirms that the regression-test-only revision fails, checks out the fix revision, and confirms that the same test passes. It does not modify this repository or submit anything upstream.

## Included references

- `regression_test.rs` preserves the focused Rust test.
- `fix.patch` preserves the one-line C correction.
- `verify.sh` automates the pinned fail-before/pass-after check.
