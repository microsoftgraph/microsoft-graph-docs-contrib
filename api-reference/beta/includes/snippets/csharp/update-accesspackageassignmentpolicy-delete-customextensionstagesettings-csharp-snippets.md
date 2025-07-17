---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessPackageAssignmentPolicy
{
	Id = "5540a08f-8ab5-43f6-a923-015275799197",
	DisplayName = "policy with access package custom workflow extension",
	Description = "Run specified access package custom workflow extension at different stages.",
	AccessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	RequestApprovalSettings = null,
	RequestorSettings = new RequestorSettings
	{
		AcceptRequests = true,
		ScopeType = "AllExistingDirectorySubjects",
		AllowedRequestors = new List<UserSet>
		{
		},
	},
	AccessReviewSettings = null,
	CustomExtensionHandlers = new List<CustomExtensionHandler>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"expiration" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"type", new UntypedString("afterDuration")
				},
				{
					"duration", new UntypedString("P365D")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies["{accessPackageAssignmentPolicy-id}"].PutAsync(requestBody);


```