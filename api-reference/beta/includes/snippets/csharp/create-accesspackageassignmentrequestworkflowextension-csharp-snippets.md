---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentRequestWorkflowExtension
{
	OdataType = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
	DisplayName = "test_action_0124_email",
	Description = "this is for graph testing only",
	EndpointConfiguration = new LogicAppTriggerEndpointConfiguration
	{
		OdataType = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		SubscriptionId = "38ab2ccc-3747-4567-b36b-9478f5602f0d",
		ResourceGroupName = "test",
		LogicAppWorkflowName = "elm-extension-email",
	},
	AuthenticationConfiguration = new AzureAdPopTokenAuthentication
	{
		OdataType = "#microsoft.graph.azureAdPopTokenAuthentication",
	},
	CallbackConfiguration = new CustomExtensionCallbackConfiguration
	{
		OdataType = "microsoft.graph.customExtensionCallbackConfiguration",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"durationBeforeTimeout" , "PT1H"
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].AccessPackageCustomWorkflowExtensions.PostAsync(requestBody);


```