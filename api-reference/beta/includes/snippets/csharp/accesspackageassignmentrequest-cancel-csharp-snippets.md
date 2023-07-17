---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.Item.Cancel.CancelPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "request-id"
		},
		{
			"requestStatus" , "cancelled"
		},
	},
};
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests["{accessPackageAssignmentRequest-id}"].Cancel.PostAsync(requestBody);


```