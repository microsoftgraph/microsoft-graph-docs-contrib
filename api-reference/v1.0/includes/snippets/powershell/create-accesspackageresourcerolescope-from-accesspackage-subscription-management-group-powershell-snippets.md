---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	role = @{
		id = "055c76c1-a466-4f1a-9279-4a2ccaa7ac3e"
		originId = "/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475"
		displayName = "Access Review Operator Service Role"
		description = "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process."
		resource = @{
			id = "c347ca9b-a9cc-4df9-bc3c-00c8e0297692"
			description = "test-mgmtgroup"
			displayName = "test-mgmtgroup"
			resourceType = "ManagementGroup"
			originId = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
			originSystem = "AzureResources"
		}
		originSystem = "AzureResources"
		type = "eligible"
	}
	scope = @{
		id = "338613b3-b410-4c6d-b5e9-45590bc8a357"
		displayName = "Root"
		description = "Root Scope"
		isRootScope = $true
		originId = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup"
		originSystem = "AzureResources"
	}
}

New-MgEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```