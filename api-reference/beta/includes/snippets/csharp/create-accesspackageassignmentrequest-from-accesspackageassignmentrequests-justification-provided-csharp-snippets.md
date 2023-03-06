---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = "UserAdd",
	AccessPackageAssignment = new AccessPackageAssignment
	{
		AccessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b",
	},
	Justification = "Need access to New Hire access package",
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.PostAsync(requestBody);


```