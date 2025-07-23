-- Ensure team_password column exists in management_teams table
-- This will add the column if it doesn't exist, or do nothing if it does

DO $$ 
BEGIN
    -- Check if the column exists, if not add it
    IF NOT EXISTS (
        SELECT 1 
        FROM information_schema.columns 
        WHERE table_name = 'management_teams' 
        AND column_name = 'team_password'
    ) THEN
        ALTER TABLE public.management_teams 
        ADD COLUMN team_password TEXT;
    END IF;
END $$;