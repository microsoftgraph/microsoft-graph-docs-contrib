---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "test_action_0124"
	description = "this is for graph testing only"
	endpointConfiguration = @{
		"@odata.type" = "#microsoft.graph.logicAppTriggerEndpointConfiguration"
		subscriptionId = "38ab2ccc-3747-4567-b36b-9478f5602f0d"
		resourceGroupName = "EMLogicApp"
		logicAppWorkflowName = "customextension_test"
	}
	authenticationConfiguration = @{
		"@odata.type" = "#microsoft.graph.azureAdTokenAuthentication"
		resourceId = "f604bd15-f785-4309-ad7c-6fad18ddb6cb"
	}
}

New-MgEntitlementManagementAccessPackageCatalogCustomAccessPackageWorkflowExtension -AccessPackageCatalogId $accessPackageCatalogId -BodyParameter $params

```