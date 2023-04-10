---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	Value = @{
		"@odata.type" = "#microsoft.graph.accessPackageAssignmentWorkflowExtension"
		DisplayName = "test_action_0127_email"
		Description = "this is for graph testing only"
		EndpointConfiguration = @{
			"@odata.type" = "#microsoft.graph.logicAppTriggerEndpointConfiguration"
			SubscriptionId = "38ab2ccc-3747-4567-b36b-9478f5602f0d"
			ResourceGroupName = "test"
			LogicAppWorkflowName = "elm-extension-email"
		}
		AuthenticationConfiguration = @{
			"@odata.type" = "#microsoft.graph.azureAdPopTokenAuthentication"
		}
	}
}

New-MgEntitlementManagementAccessPackageCatalogAccessPackageCustomWorkflowExtension -AccessPackageCatalogId $accessPackageCatalogId -BodyParameter $params

```