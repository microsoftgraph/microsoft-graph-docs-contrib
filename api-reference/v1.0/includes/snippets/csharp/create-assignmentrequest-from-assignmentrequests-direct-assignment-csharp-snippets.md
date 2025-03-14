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
	Assignment = new AccessPackageAssignment
	{
		Target = new AccessPackageSubject
		{
			Email = "user@contoso.com",
		},
		AssignmentPolicy = new AccessPackageAssignmentPolicy
		{
			Id = "11114b50-0a08-4f96-83e9-1d714aa2cd79",
		},
		AccessPackage = new AccessPackage
		{
			Id = "11115C72-0612-4C43-A044-FC0A4E71A4C5",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```