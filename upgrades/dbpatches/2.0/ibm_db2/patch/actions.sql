ALTER TABLE actions ALTER COLUMN actionid SET WITH DEFAULT NULL;
REORG TABLE actions;