---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageResourceRequest
{
	RequestType = AccessPackageRequestType.AdminAdd,
	Resource = new AccessPackageResource
	{
		OriginId = "https://microsoft.sharepoint.com/sites/Example",
		OriginSystem = "SharePointOnline",
	},
	Catalog = new AccessPackageCatalog
	{
		Id = "beedadfe-01d5-4025-910b-84abb9369997",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.ResourceRequests.PostAsync(requestBody);


```