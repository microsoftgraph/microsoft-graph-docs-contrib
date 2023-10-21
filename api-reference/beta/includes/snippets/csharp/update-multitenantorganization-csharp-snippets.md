---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MultiTenantOrganization
{
	DisplayName = "Contoso organization",
	Description = "Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank",
};
var result = await graphClient.TenantRelationships.MultiTenantOrganization.PatchAsync(requestBody);


```