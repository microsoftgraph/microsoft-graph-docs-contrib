---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	catalogId = "e8368470-afaf-44da-ba86-13a7318f1995"
	requestType = "AdminAdd"
	justification = ""
	accessPackageResource = @{
		id = ""
		displayName = "test-mgmtgroup"
		description = "test-mgmtgroup"
		resourceType = "ManagementGroup"
		originId = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
		originSystem = "AzureResources"
	}
}

New-MgBetaEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```