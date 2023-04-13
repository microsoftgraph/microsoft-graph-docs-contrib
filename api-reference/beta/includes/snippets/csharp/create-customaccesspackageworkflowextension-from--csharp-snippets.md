---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customAccessPackageWorkflowExtension = new CustomAccessPackageWorkflowExtension
{
	DisplayName = "test_action_0124",
	Description = "this is for graph testing only",
	EndpointConfiguration = new LogicAppTriggerEndpointConfiguration
	{
		SubscriptionId = "38ab2ccc-3747-4567-b36b-9478f5602f0d",
		ResourceGroupName = "EMLogicApp",
		LogicAppWorkflowName = "customextension_test"
	},
	AuthenticationConfiguration = new AzureAdTokenAuthentication
	{
		ResourceId = "f604bd15-f785-4309-ad7c-6fad18ddb6cb"
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].CustomAccessPackageWorkflowExtensions
	.Request()
	.AddAsync(customAccessPackageWorkflowExtension);

```