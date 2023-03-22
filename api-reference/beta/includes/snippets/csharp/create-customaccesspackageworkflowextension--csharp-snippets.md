---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomAccessPackageWorkflowExtension
{
	DisplayName = "test_action_0124",
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
				"resourceGroupName" , "EMLogicApp"
			},
			{
				"logicAppWorkflowName" , "customextension_test"
			},
		},
	},
	AuthenticationConfiguration = new CustomExtensionAuthenticationConfiguration
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"resourceId" , "f604bd15-f785-4309-ad7c-6fad18ddb6cb"
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].CustomAccessPackageWorkflowExtensions.PostAsync(requestBody);


```