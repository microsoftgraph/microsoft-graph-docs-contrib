---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs.Item.CustomAccessPackageWorkflowExtensions.Item.CustomAccessPackageWorkflowExtension
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.type" , "#microsoft.graph.customAccessPackageWorkflowExtension"
		},
		{
			"displayName" , "test_action_0124_email"
		},
		{
			"description" , "this is for graph testing only"
		},
	},
};
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].CustomAccessPackageWorkflowExtensions["{customAccessPackageWorkflowExtension-id}"].PutAsync(requestBody);


```