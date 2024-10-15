-- Active: 1727964969122@@127.0.0.1@5432@postgres@examresultsdb
SELECT
    c.conname AS constraint_name,
    c.conrelid::regclass AS table_name,
    a.attname AS column_name,
    c.confrelid::regclass AS foreign_table_name,
    af.attname AS foreign_column_name
FROM
    pg_constraint AS c
    JOIN pg_attribute AS a ON a.attnum = ANY (c.conkey)
    AND a.attrelid = c.conrelid
    JOIN pg_attribute AS af ON af.attnum = ANY (c.confkey)
    AND af.attrelid = c.confrelid
WHERE
    c.contype = 'f'
    AND c.connamespace::regnamespace = 'examresultsdb'::regnamespace;

-- List all tables in a schema (use only if no foreign keys implemented)
-- SELECT table_name
-- FROM information_schema.tables
-- WHERE table_schema = 'your_schema_name'
-- AND table_type = 'BASE TABLE';