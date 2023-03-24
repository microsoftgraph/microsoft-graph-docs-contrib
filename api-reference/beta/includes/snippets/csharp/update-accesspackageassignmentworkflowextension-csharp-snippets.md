---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs.Item.AccessPackageCustomWorkflowExtensions.Item.AccessPackageCustomWorkflowExtension
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.type" , "#microsoft.graph.accessPackageAssignmentWorkflowExtension"
		},
		{
			"displayName" , "test_action_0124_email"
		},
		{
			"description" , "this is for graph testing only"
		},
	},
};
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].AccessPackageCustomWorkflowExtensions["{customCalloutExtension-id}"].PutAsync(requestBody);


```