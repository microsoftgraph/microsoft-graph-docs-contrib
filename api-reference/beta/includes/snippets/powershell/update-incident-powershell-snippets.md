---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	classification = "TruePositive"
	determination = "MultiStagedAttack"
	customTags = @(
		"Demo"
	)
}

Update-MgBetaSecurityIncident -IncidentId $incidentId -BodyParameter $params

```