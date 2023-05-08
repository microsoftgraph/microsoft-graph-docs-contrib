---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = "AdminAdd",
	AccessPackageAssignment = new AccessPackageAssignment
	{
		Target = new AccessPackageSubject
		{
			Email = "user@contoso.com",
		},
		AssignmentPolicyId = "2264bf65-76ba-417b-a27d-54d291f0cbc8",
		AccessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.PostAsync(requestBody);


```