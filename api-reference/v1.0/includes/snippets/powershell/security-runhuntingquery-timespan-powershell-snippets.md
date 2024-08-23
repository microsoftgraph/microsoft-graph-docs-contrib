---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	Query = "DeviceProcessEvents"
	Timespan = "P90D"
}

Start-MgSecurityHuntingQuery -BodyParameter $params

```