---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	query = "DeviceProcessEvents"
	timespan = "P90D"
}

Start-MgBetaSecurityHuntingQuery -BodyParameter $params

```