# Azure File Sync – AZ-104 Exam Notes

## Key Concepts
- Azure File Sync uses a **Storage Sync Service**
- A **sync group** contains:
  - One **cloud endpoint** (Azure File Share)
  - One or more **server endpoints**

## Exam Rules to Remember
- ❗ Only ONE cloud endpoint per sync group
- ✅ Multiple server endpoints are allowed
- Server endpoint must point to an **existing NTFS folder**
- Azure File Sync does NOT replace Azure Files

## Networking
- Azure Files requires **TCP 445 outbound**
- If port 445 is blocked → sync will fail

## Cloud Tiering
- Frequently accessed files stay local
- Cold files are tiered to Azure
- Files appear as placeholders on server

## Common Exam Traps
- ❌ Confusing Storage Account with Storage Sync Service
- ❌ Trying to sync two Azure file shares in one sync group
- ❌ Forgetting NTFS permissions still apply

## When to Use Azure File Sync
- Lift-and-shift file servers
- Branch office file servers
- Hybrid file access scenarios
