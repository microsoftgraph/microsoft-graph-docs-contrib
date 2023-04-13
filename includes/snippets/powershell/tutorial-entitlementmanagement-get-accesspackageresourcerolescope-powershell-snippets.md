---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	accessPackageResourceRole = @{
		originId = "Member_e93e24d1-2b65-4a6c-a1dd-654a12225487"
		displayName = "Member"
		originSystem = "AadGroup"
		accessPackageResource = @{
			id = "4a1e21c5-8a76-4578-acb1-641160e076e8"
			resourceType = "Security Group"
			originId = "e93e24d1-2b65-4a6c-a1dd-654a12225487"
			originSystem = "AadGroup"
		}
	}
	accessPackageResourceScope = @{
		originId = "e93e24d1-2b65-4a6c-a1dd-654a12225487"
		originSystem = "AadGroup"
	}
}

New-MgEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```