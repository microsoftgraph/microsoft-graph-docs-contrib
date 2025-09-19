---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	displayName = "SPO-BulkRestoreArtifacts"
	siteWebUrls = @(
	"https: //contoso1.sharepoint.com"
"https: //contoso2.sharepoint.com"
"https: //contoso3.sharepoint.com"
)
protectionTimePeriod = @{
startDateTime = [System.DateTime]::Parse("2024-01-01T00:00:00Z")
endDateTime = [System.DateTime]::Parse("2024-01-08T00:00:00Z")
}
destinationType = "new"
tags = "fastRestore"
restorePointPreference = "latest"
}

New-MgSolutionBackupRestoreSharePointRestoreSessionSiteRestoreArtifactBulkAdditionRequest -SharePointRestoreSessionId $sharePointRestoreSessionId -BodyParameter $params

```