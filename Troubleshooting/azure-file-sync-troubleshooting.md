# Azure File Sync – Troubleshooting Guide

## Issue: Files not syncing
**Checks:**
- Server endpoint health
- Sync group status
- NTFS permissions

## Issue: Azure Files not accessible
**Cause:**
- TCP 445 blocked

**Fix:**
- Allow outbound TCP 445
- Verify firewall/proxy rules

## Issue: Server endpoint unhealthy
**Causes:**
- Path does not exist
- Path already used in another sync group
- Azure File Sync agent not running

## Logs Location
C:\ProgramData\Azure\StorageSync\Logs
