---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignmentRequest = new AccessPackageAssignmentRequestObject
{
	RequestType = AccessPackageRequestType.AdminRemove,
	Assignment = new AccessPackageAssignment
	{
		Id = "a6bb6942-3ae1-4259-9908-0133aaee9377"
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests
	.Request()
	.AddAsync(accessPackageAssignmentRequest);

```