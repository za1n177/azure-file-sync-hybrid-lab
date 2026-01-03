# Issue: Permission Problems (NTFS / Share)

## Symptoms
- Files visible but inaccessible
- Sync completes but access denied
- Users cannot open files

## Root Cause
- NTFS permissions not inherited
- Mismatch between server and Azure Files
- Identity-based access not configured

## Resolution
1. Validate NTFS permissions on server
2. Ensure inheritance is enabled
3. Align permissions before sync

## Validation
Access files from:
- On-prem server
- Azure File Share

## Exam Tip
Azure File Sync preserves NTFS permissions.
