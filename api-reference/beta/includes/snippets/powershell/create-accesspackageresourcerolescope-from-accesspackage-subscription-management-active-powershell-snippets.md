---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	accessPackageResourceRole = @{
		originId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475"
		displayName = "Access Review Operator Service Role"
		description = "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process."
		accessPackageResource = @{
			id = "b09a0288-a83e-4ae6-8a53-bc09aeb966ea"
			description = "Dev"
			displayName = "Dev"
			resourceType = "Subscription"
			originId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
			originSystem = "AzureResources"
		}
		originSystem = "AzureResources"
		type = "active"
	}
	accessPackageResourceScope = @{
		id = "c66c1e22-1093-46fb-a8a8-c0e334113ca4"
		description = "Root"
		displayName = "Root"
		isRootScope = $true
		originSystem = "AzureResources"
		originId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
	}
}

New-MgBetaEntitlementManagementAccessPackageResourceRoleScope -AccessPackageId $accessPackageId -BodyParameter $params

```