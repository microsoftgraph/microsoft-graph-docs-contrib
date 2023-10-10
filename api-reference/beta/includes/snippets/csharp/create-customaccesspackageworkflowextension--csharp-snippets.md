---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomAccessPackageWorkflowExtension
{
	DisplayName = "test_action_0124",
	Description = "this is for graph testing only",
	EndpointConfiguration = new LogicAppTriggerEndpointConfiguration
	{
		OdataType = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		SubscriptionId = "38ab2ccc-3747-4567-b36b-9478f5602f0d",
		ResourceGroupName = "EMLogicApp",
		LogicAppWorkflowName = "customextension_test",
	},
	AuthenticationConfiguration = new AzureAdTokenAuthentication
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		ResourceId = "f604bd15-f785-4309-ad7c-6fad18ddb6cb",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].CustomAccessPackageWorkflowExtensions.PostAsync(requestBody);


```