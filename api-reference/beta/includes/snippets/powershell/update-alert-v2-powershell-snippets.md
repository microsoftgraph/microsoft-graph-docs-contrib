---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	assignedTo = "secAdmin@contoso.onmicrosoft.com"
	classification = "truePositive"
	determination = "malware"
	status = "inProgress"
}

Update-MgBetaSecurityAlertV2 -AlertId $alertId -BodyParameter $params

```