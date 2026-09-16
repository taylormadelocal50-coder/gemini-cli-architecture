# Latin SQL Sandbox

A sibling sandbox beside the Jupyter playground for testing reviewed English-to-Latin domain terminology in one SQLite banking scenario.

The sandbox preserves standard SQL syntax. Latin is used only for table names, column names, aliases, and domain values.

## Setup

```bash
cd CLI/architecture/playground/latin-sql-sandbox
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

## Translate a term

```bash
python tools/translate_terms.py "account"
```

Approved terms resolve from `scenarios/latin_glossary.json`. Unknown terms may be proposed by the external provider, which requires network access and may impose rate limits. Review every proposed translation before using it in a schema.

## Run the scenario

```bash
sqlite3 :memory: < scenarios/banking_latine.sql
```

The notebook in `notebooks/latin_sql_banking.ipynb` demonstrates the same scenario for later use from a selected Jupyter kernel.
