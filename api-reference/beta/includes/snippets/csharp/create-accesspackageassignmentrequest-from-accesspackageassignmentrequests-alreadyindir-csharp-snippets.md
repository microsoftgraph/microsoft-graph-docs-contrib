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
	RequestType = "adminAdd",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignment" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"targetId", new UntypedString("46184453-e63b-4f20-86c2-c557ed5d5df9")
				},
				{
					"assignmentPolicyId", new UntypedString("2264bf65-76ba-417b-a27d-54d291f0cbc8")
				},
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