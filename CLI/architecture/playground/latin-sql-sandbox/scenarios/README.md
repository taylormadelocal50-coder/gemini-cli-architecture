# Latin SQL Banking Scenario

This scenario preserves standard SQLite syntax while using reviewed Latin domain identifiers and labels. The translator proposes terminology only; it does not translate SQL keywords or execute database changes.

## Run the SQL directly

```bash
cd CLI/architecture/playground/latin-sql-sandbox
sqlite3 :memory: < scenarios/banking_latine.sql
```

## Translate a domain term

```bash
source .venv/bin/activate
python tools/translate_terms.py "account"
```

Known terms resolve from `latin_glossary.json`. Unknown terms may be proposed through `deep-translator`; review those proposals before adding them to SQL schemas. The external provider requires network access and may impose rate limits.

## Integrity rule

Keywords such as `CREATE TABLE`, `SELECT`, `JOIN`, and `CHECK` remain valid SQL. Only table names, column names, aliases, and domain values use Latin.
