---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = "AdminRemove",
	AccessPackageAssignment = new AccessPackageAssignment
	{
		Id = "a6bb6942-3ae1-4259-9908-0133aaee9377",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.PostAsync(requestBody);


```