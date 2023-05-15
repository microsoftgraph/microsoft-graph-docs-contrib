---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageResourceRequest
{
	CatalogId = "de9315c1-272b-4905-924b-cc112ca180c7",
	AccessPackageResource = new AccessPackageResource
	{
		DisplayName = "Community Outreach",
		Description = "https://contoso.sharepoint.com/sites/CSR",
		ResourceType = "SharePoint Online Site",
		OriginId = "https://contoso.sharepoint.com/sites/CSR",
		OriginSystem = "SharePointOnline",
		AccessPackageResourceEnvironment = new AccessPackageResourceEnvironment
		{
			OriginId = "https://contoso-admin.sharepoint.com/",
		},
	},
	RequestType = "AdminAdd",
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests.PostAsync(requestBody);


```