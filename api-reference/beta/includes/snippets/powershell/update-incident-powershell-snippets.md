---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	Classification = "TruePositive"
	Determination = "MultiStagedAttack"
	Tags = @(
		"Demo"
	)
}

Update-MgSecurityIncident -IncidentId $incidentId -BodyParameter $params

```