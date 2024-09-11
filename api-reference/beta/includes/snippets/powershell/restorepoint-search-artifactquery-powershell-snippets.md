---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	artifactQuery = @{
		queryExpression = "((subject -contains ‘Finance’)  -or  (subject -contains ‘Legal’)) -and (sender -eq 'alex@contoso.com') -and (recipient -eq 'carol@contoso.com') -and hasAttachment -eq true"
		artifactType = "message"
	}
	protectionUnitIds = @(
	"23014d8c-71fe-4d00-a01a-31850bc5b42a"
)
protectionTimePeriod = @{
	startDateTime = [System.DateTime]::Parse("2021-01-01T00:00:00Z")
}
restorePointPreference = "oldest"
}

Search-MgBetaBackupRestorePoint -BodyParameter $params

```