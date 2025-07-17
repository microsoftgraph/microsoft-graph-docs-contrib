---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = "adminRemove",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignment" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"id", new UntypedString("a6bb6942-3ae1-4259-9908-0133aaee9377")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```