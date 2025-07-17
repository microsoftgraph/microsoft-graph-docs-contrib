---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = AccessPackageRequestType.UserAdd,
	Justification = "Need access to New Hire access package",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"accessPackageAssignment" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"accessPackageId", new UntypedString("a914b616-e04e-476b-aa37-91038f0b165b")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```