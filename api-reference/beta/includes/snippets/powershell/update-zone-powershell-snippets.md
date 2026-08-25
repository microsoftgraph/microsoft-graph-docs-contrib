---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "Updated Production Zone"
	description = "Updated description for production environments"
}

Update-MgBetaSecurityZone -ZoneId $zoneId -BodyParameter $params

```