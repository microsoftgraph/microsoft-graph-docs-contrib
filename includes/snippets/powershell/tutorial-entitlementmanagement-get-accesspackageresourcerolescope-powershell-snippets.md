---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	AccessPackageResourceRole = @{
		OriginId = "Member_e93e24d1-2b65-4a6c-a1dd-654a12225487"
		DisplayName = "Member"
		OriginSystem = "AadGroup"
		AccessPackageResource = @{
			Id = "4a1e21c5-8a76-4578-acb1-641160e076e8"
			ResourceType = "Security Group"
			OriginId = "e93e24d1-2b65-4a6c-a1dd-654a12225487"
			OriginSystem = "AadGroup"
		}
	}
	AccessPackageResourceScope = @{
		OriginId = "e93e24d1-2b65-4a6c-a1dd-654a12225487"
		OriginSystem = "AadGroup"
	}
}

New-MgEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```