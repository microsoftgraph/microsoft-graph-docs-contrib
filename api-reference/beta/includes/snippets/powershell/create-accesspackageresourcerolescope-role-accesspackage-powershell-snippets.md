---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	role = @{
		originId = "Eligible"
		displayName = "Eligible Member"
		originSystem = "DirectoryRole"
		resource = @{
			id = "ea036095-57a6-4c90-a640-013edf151eb1"
		}
	}
	scope = @{
		description = "Root Scope"
		displayName = "Root"
		isRootScope = $true
		originSystem = "DirectoryRole"
		originId = "c4e39bd9-1100-46d3-8c65-fb160da0071f"
	}
}

New-MgBetaEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```