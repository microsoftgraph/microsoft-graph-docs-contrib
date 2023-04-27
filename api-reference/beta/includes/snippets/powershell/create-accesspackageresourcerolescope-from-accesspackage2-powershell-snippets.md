---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	accessPackageResourceRole = @{
		originId = "4"
		originSystem = "SharePointOnline"
		accessPackageResource = @{
			id = "53c71803-a0a8-4777-aecc-075de8ee3991"
		}
	}
	accessPackageResourceScope = @{
		id = "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33"
		originId = "https://microsoft.sharepoint.com/portals/Community"
		originSystem = "SharePointOnline"
	}
}

New-MgEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```