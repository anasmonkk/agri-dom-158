-- Force complete schema reload for PostgREST
SELECT pg_notify('pgrst', 'reload schema');

-- Also refresh the schema for good measure
REFRESH MATERIALIZED VIEW IF EXISTS information_schema.columns;