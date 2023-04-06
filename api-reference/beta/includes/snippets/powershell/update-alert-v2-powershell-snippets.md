---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	AssignedTo = "secAdmin@contoso.onmicrosoft.com"
	Classification = "truePositive"
	Determination = "malware"
	Status = "inProgress"
}

Update-MgSecurityAlertV2 -AlertId $alertId -BodyParameter $params

```