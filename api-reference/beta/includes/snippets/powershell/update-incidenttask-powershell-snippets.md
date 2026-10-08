---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	status = "completed"
}

Update-MgBetaSecurityIncidentTask -IncidentTaskId $incidentTaskId -BodyParameter $params

```