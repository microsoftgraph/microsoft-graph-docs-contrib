---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	accessPackageResourceRole = @{
		originId = "EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18"
		displayName = "Eligible Member"
		originSystem = "AadGroup"
		accessPackageResource = @{
			id = "b86a1828-3171-409e-8343-32a224f324a0"
			resourceType = "O365 Group"
			originId = "bcfae74a-91a6-46e9-99bf-89d6487cc3f3"
			originSystem = "AadGroup"
		}
	}
	accessPackageResourceScope = @{
		originId = "bcfae74a-91a6-46e9-99bf-89d6487cc3f3"
		originSystem = "AadGroup"
	}
}

New-MgBetaEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```