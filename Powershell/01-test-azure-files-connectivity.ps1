# Test Azure Files connectivity over SMB (TCP 445)

$storageAccount = "<yourstorageaccount>.file.core.windows.net"

Test-NetConnection -ComputerName $storageAccount -Port 445
