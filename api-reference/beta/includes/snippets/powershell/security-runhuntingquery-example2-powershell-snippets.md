---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	Query = "DeviceProcessEvents"
	Timespan = "P90D"
}

Start-MgBetaSecurityHuntingQuery -BodyParameter $params

```