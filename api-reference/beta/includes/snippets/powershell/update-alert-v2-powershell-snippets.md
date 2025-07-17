---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	assignedTo = "secAdmin@contoso.com"
	classification = "truePositive"
	determination = "malware"
	status = "inProgress"
	CustomDetails = @{
		newKey = "newValue"
	}
}

Update-MgBetaSecurityAlertV2 -AlertId $alertId -BodyParameter $params

```