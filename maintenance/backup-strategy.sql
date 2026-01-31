-- NOTE:
-- Simulated SQL Server backup strategy for demonstration purposes

-- Full backup
BACKUP DATABASE SampleDB
TO DISK = 'C:\Backups\SampleDB_Full.bak'
WITH INIT;

-- Log backup
BACKUP LOG SampleDB
TO DISK = 'C:\Backups\SampleDB_Log.trn'
WITH INIT;
