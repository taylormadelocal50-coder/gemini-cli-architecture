#!/usr/bin/env python3
"""Translate English terminology to Latin without changing SQL keywords.

The external translator proposes labels. Review and store accepted terms in
scenarios/latin_glossary.json before using them as schema identifiers.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

from deep_translator import GoogleTranslator
from deep_translator.exceptions import BaseError

ROOT = Path(__file__).resolve().parents[1]
GLOSSARY_PATH = ROOT / "scenarios" / "latin_glossary.json"


def load_glossary() -> dict[str, str]:
    return json.loads(GLOSSARY_PATH.read_text(encoding="utf-8"))


def translate_term(term: str) -> tuple[str, str]:
    normalized = term.strip().lower()
    glossary = load_glossary()
    if normalized in glossary:
        return glossary[normalized], "approved-glossary"

    try:
        translated = GoogleTranslator(source="english", target="latin").translate(term)
    except BaseError as error:
        raise SystemExit(
            "The external translation provider is unavailable or rate-limited. "
            "Add a reviewed translation to scenarios/latin_glossary.json."
        ) from error

    return translated, "external-proposal-review-required"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("term", help="English term to translate")
    args = parser.parse_args()
    translation, source = translate_term(args.term)
    print(json.dumps({"english": args.term, "latin": translation, "source": source}))


if __name__ == "__main__":
    main()
