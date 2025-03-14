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
	Justification = "Access for direct employee",
	RequestType = "UserAdd",
	Answers = new List<AccessPackageAnswer>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignment" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"accessPackageId", new UntypedString("5b98f958-0dea-4a5b-836e-109dccbd530c")
				},
				{
					"schedule", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"startDateTime", new UntypedNull()
						},
						{
							"stopDateTime", new UntypedNull()
						},
					})
				},
				{
					"assignmentPolicyId", new UntypedString("c5f7847f-83a8-4315-a754-d94a6f39b875")
				},
				{
					"target", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"displayName", new UntypedString("Idris Ibrahim")
						},
						{
							"email", new UntypedString("IdrisIbrahim@woodgrovebank.com")
						},
						{
							"objectId", new UntypedString("21aceaba-fe13-4e3b-aa8c-4c588d5e7387")
						},
						{
							"subjectType", new UntypedString("user")
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```