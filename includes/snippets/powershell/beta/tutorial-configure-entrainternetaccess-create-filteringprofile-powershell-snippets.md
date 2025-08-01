---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "Security Profile for UserA"
	state = "enabled"
	priority = 100
	policies = @(
	)
}

New-MgBetaNetworkAccessFilteringProfile -BodyParameter $params

```