# Networking & Connectivity (AZ-104)

## Required Ports
- TCP 445 → Azure Files (MANDATORY)
- TCP 443 → Azure control plane

## Common Exam Question
Azure File Sync fails → check outbound TCP 445

## Validation Command
```powershell
Test-NetConnection <storageaccount>.file.core.windows.net -Port 445

---

## Exam Tip

If TCP 445 is blocked, Azure File Sync WILL NOT work.
