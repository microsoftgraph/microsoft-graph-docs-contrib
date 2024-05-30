---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	role = @{
		id = "748f8431-c7c6-404d-8564-df67aa8cfc5e"
		displayName = "Member"
		originSystem = "AadGroup"
		originId = "Member_0282e19d-bf41-435d-92a4-99bab93af305"
		resource = @{
			id = "b16e0e71-17b4-4ebd-a3cd-8a468542e418"
			displayName = "example group"
			description = "a group whose members are to be assigned via an access package"
			originId = "0282e19d-bf41-435d-92a4-99bab93af305"
			originSystem = "AadGroup"
		}
	}
	scope = @{
		id = "83b3e3e9-c8b3-481b-ad80-53e29d1eda9c"
		displayName = "Root"
		description = "Root Scope"
		originId = "0282e19d-bf41-435d-92a4-99bab93af305"
		originSystem = "AadGroup"
		isRootScope = $true
	}
}

New-MgEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```