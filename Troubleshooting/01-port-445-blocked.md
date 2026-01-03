# Issue: Port 445 Blocked (Azure Files Not Accessible)

## Symptoms
- Azure File Sync setup fails
- Azure Files cannot be accessed
- Sync group shows errors
- SMB connectivity fails

## Root Cause
Outbound TCP 445 is blocked by:
- Firewall
- NSG
- Corporate proxy
- ISP restriction

Azure Files requires SMB over TCP 445.

## Resolution
1. Allow outbound TCP 445
2. Verify firewall / NSG rules
3. Confirm no proxy blocks SMB traffic

## Validation
```powershell
Test-NetConnection login.microsoftonline.com -Port 443
Test-NetConnection <storageaccount>.file.core.windows.net -Port 445

----

## Exam Tip (AZ-104)

Azure Files requires TCP 445.
If blocked, Azure File Sync will not function.
