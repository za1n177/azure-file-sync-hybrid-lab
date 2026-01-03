Azure File Sync – Hybrid File Server Lab
📌 Overview

This hands-on lab demonstrates a hybrid file server architecture using Azure File Sync, integrating an on-premises Windows file server with Azure Files.

The lab validates AZ-104 exam scenarios and real-world enterprise use cases, including sync group design, cloud and server endpoints, connectivity requirements, and troubleshooting.

🎯 Objectives

Deploy and configure Azure File Sync

Integrate an on-prem Windows Server with Azure Files

Validate bidirectional file synchronization

Understand sync group constraints and endpoint behavior

Practice AZ-104 exam-relevant scenarios

🏗 Architecture

Hybrid File Sync Design

On-Prem Windows Server (Server1)
└── D:\Folder1
        ⇅ Azure File Sync
Azure Storage Account
└── Azure File Share (data)

🧰 Technologies Used

Microsoft Azure

Azure Storage Account (Azure Files)

Azure File Sync (Storage Sync Service)

Windows Server (File Server role)

PowerShell

SMB (TCP 445)

🪜 Lab Steps & Evidence
1️⃣ Verify Azure Files Connectivity (TCP 445)

Azure Files requires outbound TCP 445 connectivity.

📸 Screenshot:
screenshots/01-connectivity-443.png

2️⃣ Create Azure File Share

A file share named data was created in the storage account.

📸 Screenshot:
screenshots/02-file-share-data.png

3️⃣ Deploy Storage Sync Service

A Storage Sync Service (Sync1) was created to manage sync groups and endpoints.

📸 Screenshot:
screenshots/03-storage-sync-service-sync1.png

4️⃣ Create Sync Group

A sync group named sync-files-prod was created with the Azure file share as the cloud endpoint.

📸 Screenshot:
screenshots/04-sync-group-sync-files-prod.png

5️⃣ Configure Server Endpoint

The on-prem server endpoint was configured:

Server: Server1

Path: D:\Folder1

Health: Healthy

Sync direction: Bi-directional

📸 Screenshot:
screenshots/05-sync-group-cloud-and-server-endpoints.png

6️⃣ Validate File Synchronization

A test file created on the server (server-test.txt) successfully synchronized to Azure Files.

📸 Screenshot:
screenshots/06-file-synced-to-azure-file-share.png

🧪 Validation Summary
Component	Status
Cloud endpoint	✅ Provisioned
Server endpoint	✅ Healthy
Sync errors	0
Upload to cloud	Complete
Download to server	Complete
⚠️ Common Issues & Troubleshooting

Port 445 blocked → Azure Files not accessible

NTFS permissions mismatch → Files not syncing

Incorrect server path → Server endpoint unhealthy

Detailed troubleshooting notes are available in:

Troubleshooting/

🧠 AZ-104 Exam Takeaways

Azure File Sync supports multiple server endpoints but only one cloud endpoint per sync group

Cloud endpoint = Azure File Share

Server endpoint = local NTFS path

Azure File Sync uses Storage Sync Service, not the storage account itself

TCP 445 must be open for Azure Files

📂 Repository Structure
azure-file-sync-hybrid-lab/
├── README.md
├── screenshots/
├── Powershell/
├── Exam notes/
└── Troubleshooting/

🚀 Next Improvements

Enable cloud tiering

Add Azure Backup for Azure Files

Implement RBAC / identity-based access

Add PowerShell automation for deployment

👤 Author

Zaini
Senior IT Professional | Azure | Hybrid Infrastructure | AZ-104 Preparation
