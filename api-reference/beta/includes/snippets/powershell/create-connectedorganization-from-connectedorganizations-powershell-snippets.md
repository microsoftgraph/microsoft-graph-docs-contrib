---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "Connected organization name"
	description = "Connected organization description"
	identitySources = @(
		@{
			"@odata.type" = "#microsoft.graph.domainIdentitySource"
			domainName = "example.com"
			displayName = "example.com"
		}
	)
	state = "proposed"
}

New-MgBetaEntitlementManagementConnectedOrganization -BodyParameter $params

```