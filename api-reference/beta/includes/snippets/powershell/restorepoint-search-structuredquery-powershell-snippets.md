---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.BackupRestore

$params = @{
	artifactQuery = @{
		structuredQueryExpression = @{
			senders = @(
			"abc@contoso.com"
		)
		subjects = @(
		"Check email"
	"Important"
)
hasAttachment = $true
items = @(
"email"
)
}
}
protectionUnitIds = @(
"23014d8c-71fe-4d00-a01a-31850bc5b42a"
)
protectionTimePeriod = @{
startDateTime = [System.DateTime]::Parse("2021-01-01T00:00:00Z")
endDateTime = [System.DateTime]::Parse("2021-01-30T00:00:00Z")
}
restorePointPreference = "oldest"
}

Search-MgBetaSolutionBackupRestorePoint -BodyParameter $params

```