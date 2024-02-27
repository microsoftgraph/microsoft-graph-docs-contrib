---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.Item.Cancel;

var requestBody = new CancelPostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests["{accessPackageAssignmentRequest-id}"].Cancel.PostAsync(requestBody);


```