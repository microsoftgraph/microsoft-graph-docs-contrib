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
			"@odata.type" = "#microsoft.graph.azureActiveDirectoryTenant"
			displayName = "Contoso"
			tenantId = "aaaabbbb-0000-cccc-1111-dddd2222eeee"
		}
	)
	state = "proposed"
}

New-MgBetaEntitlementManagementConnectedOrganization -BodyParameter $params

```