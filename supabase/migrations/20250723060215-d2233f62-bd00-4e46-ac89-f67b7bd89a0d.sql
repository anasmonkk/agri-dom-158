-- Force complete schema reload for PostgREST
SELECT pg_notify('pgrst', 'reload schema');

-- Wait a moment for schema cache to clear
SELECT pg_sleep(1);