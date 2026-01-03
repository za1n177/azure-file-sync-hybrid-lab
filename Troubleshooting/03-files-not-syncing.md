# Issue: Files Not Syncing

## Symptoms
- Files exist on server but not in Azure
- Files exist in Azure but not on server
- Sync appears stuck

## Root Cause
- Initial sync still running
- NTFS permissions mismatch
- File locked by application
- Excluded file types

## Resolution
1. Wait for initial sync completion
2. Check NTFS permissions
3. Verify no file locks
4. Review Azure File Sync exclusions

## Validation
- Upload to cloud = Complete
- Download to server = Complete

## Exam Tip
Initial sync can take time depending on data size.
