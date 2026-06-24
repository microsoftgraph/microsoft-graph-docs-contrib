---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	requestType = "adminAdd"
	resource = @{
		displayName = "test-mgmtgroup"
		description = "test-mgmtgroup"
		resourceType = "ManagementGroup"
		originId = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
		originSystem = "AzureResources"
	}
	catalog = @{
		id = "e8368470-afaf-44da-ba86-13a7318f1995"
	}
}

New-MgEntitlementManagementResourceRequest -BodyParameter $params

```