---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = AccessPackageRequestType.AdminAdd,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"accessPackageAssignment" , new 
			{
				Target = new 
				{
					Email = "user@contoso.com",
				},
				AssignmentPolicyId = "2264bf65-76ba-417b-a27d-54d291f0cbc8",
				AccessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```