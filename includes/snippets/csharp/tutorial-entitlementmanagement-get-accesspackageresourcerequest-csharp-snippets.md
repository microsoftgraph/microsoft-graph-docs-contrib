---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageResourceRequest
{
	CatalogId = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
	RequestType = "AdminAdd",
	Justification = "",
	AccessPackageResource = new AccessPackageResource
	{
		DisplayName = "Marketing resources",
		Description = "Marketing group",
		ResourceType = "AadGroup",
		OriginId = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
		OriginSystem = "AadGroup",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests.PostAsync(requestBody);


```