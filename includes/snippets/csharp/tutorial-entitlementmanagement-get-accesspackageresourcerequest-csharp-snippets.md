---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRequest = new AccessPackageResourceRequestObject
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
		OriginSystem = "AadGroup"
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests
	.Request()
	.AddAsync(accessPackageResourceRequest);

```