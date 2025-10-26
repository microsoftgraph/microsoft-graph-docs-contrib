---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	displayName = "Usermailbox-BulkRestoreArtifacts"
	mailboxes = @(
	"contoso1@micorosft.com"
"consotos2@microsoft.com"
"contoso3@microsoft.com"
)
protectionTimePeriod = @{
startDateTime = [System.DateTime]::Parse("2021-01-01T00:00:00Z")
endDateTime = [System.DateTime]::Parse("2021-01-08T00:00:00Z")
}
destinationType = "new"
tags = "fastRestore"
restorePointPreference = "latest"
}

New-MgSolutionBackupRestoreExchangeRestoreSessionMailboxRestoreArtifactBulkAdditionRequest -ExchangeRestoreSessionId $exchangeRestoreSessionId -BodyParameter $params

```