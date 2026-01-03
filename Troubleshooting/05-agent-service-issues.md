# Issue: Azure File Sync Agent Service Issues

## Symptoms
- Server not registering
- Sync stops unexpectedly
- Agent not reporting status

## Root Cause
- Agent service stopped
- Agent outdated
- Server reboot

## Resolution
```powershell
Get-Service FileSyncSvc
Restart-Service FileSyncSvc


Update agent if required.

## Validation

Azure Portal → Registered Servers → Status = Online

## Exam Tip

Azure File Sync requires the agent on Windows Server.
