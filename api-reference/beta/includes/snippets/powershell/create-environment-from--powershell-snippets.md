---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	kind = "azureSubscription"
	id = "/subscriptions/d34fd44c-ebfa-4a9c-bceb-9eeafe72ac15"
}

New-MgBetaSecurityZoneEnvironment -ZoneId $zoneId -BodyParameter $params

```