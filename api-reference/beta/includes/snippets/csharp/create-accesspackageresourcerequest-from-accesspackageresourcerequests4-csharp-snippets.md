---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageResourceRequest
{
	CatalogId = "beedadfe-01d5-4025-910b-84abb9369997",
	RequestType = "AdminAdd",
	AccessPackageResource = new AccessPackageResource
	{
		OriginId = "c6294667-7348-4f5a-be73-9d2c65f574f3",
		OriginSystem = "AadGroup",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests.PostAsync(requestBody);


```