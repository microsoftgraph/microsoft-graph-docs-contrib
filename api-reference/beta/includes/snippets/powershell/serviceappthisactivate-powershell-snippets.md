---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	effectiveDateTime = [System.DateTime]::Parse("2024-04-19T12-01-03.45Z")
}

Initialize-MgBetaBackupRestoreServiceApp -ServiceAppId $serviceAppId -BodyParameter $params

```