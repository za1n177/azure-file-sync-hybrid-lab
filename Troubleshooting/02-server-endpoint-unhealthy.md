# 🧯 02-server-endpoint-unhealthy.md

```md
# Issue: Server Endpoint Unhealthy

## Symptoms
- Server endpoint status = Unhealthy
- Sync does not start
- Errors shown in Azure Portal

## Root Cause
- Incorrect local path
- Path does not exist
- Drive offline or permissions missing
- NTFS ACL mismatch

## Resolution
1. Verify local folder path exists
2. Confirm NTFS permissions
3. Ensure drive is online
4. Restart Azure File Sync agent

## Validation
Azure Portal → Sync Group → Server Endpoints → Status = Healthy

## Exam Tip
Server endpoint = **local NTFS path**
