---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = "userAdd",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignment" , new 
			{
				AccessPackageId = "d7be3253-b9c6-4fab-adef-30d30de8da2b",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```