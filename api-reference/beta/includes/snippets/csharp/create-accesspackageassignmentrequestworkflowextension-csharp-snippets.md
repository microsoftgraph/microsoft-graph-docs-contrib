---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomCalloutExtension
{
	OdataType = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
	DisplayName = "test_action_0124_email",
	Description = "this is for graph testing only",
	EndpointConfiguration = new CustomExtensionEndpointConfiguration
	{
		OdataType = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"subscriptionId" , "38ab2ccc-3747-4567-b36b-9478f5602f0d"
			},
			{
				"resourceGroupName" , "test"
			},
			{
				"logicAppWorkflowName" , "elm-extension-email"
			},
		},
	},
	AuthenticationConfiguration = new CustomExtensionAuthenticationConfiguration
	{
		OdataType = "#microsoft.graph.azureAdPopTokenAuthentication",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"callbackConfiguration" , new 
			{
				OdataType = "microsoft.graph.customExtensionCallbackConfiguration",
				DurationBeforeTimeout = "PT1H",
			}
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].AccessPackageCustomWorkflowExtensions.PostAsync(requestBody);


```