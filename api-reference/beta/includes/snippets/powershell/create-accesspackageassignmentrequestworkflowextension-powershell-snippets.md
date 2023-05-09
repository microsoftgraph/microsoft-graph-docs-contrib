---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	value = @{
		"@odata.type" = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension"
		displayName = "test_action_0124_email"
		description = "this is for graph testing only"
		endpointConfiguration = @{
			"@odata.type" = "#microsoft.graph.logicAppTriggerEndpointConfiguration"
			subscriptionId = "38ab2ccc-3747-4567-b36b-9478f5602f0d"
			resourceGroupName = "test"
			logicAppWorkflowName = "elm-extension-email"
		}
		authenticationConfiguration = @{
			"@odata.type" = "#microsoft.graph.azureAdPopTokenAuthentication"
		}
		callbackConfiguration = @{
			"@odata.type" = "microsoft.graph.customExtensionCallbackConfiguration"
			durationBeforeTimeout = "PT1H"
		}
	}
}

New-MgEntitlementManagementAccessPackageCatalogAccessPackageCustomWorkflowExtension -AccessPackageCatalogId $accessPackageCatalogId -BodyParameter $params

```