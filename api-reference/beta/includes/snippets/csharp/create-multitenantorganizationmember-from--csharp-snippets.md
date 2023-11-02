---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MultiTenantOrganizationMember
{
	TenantId = "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad",
	DisplayName = "Fabrikam",
};
var result = await graphClient.TenantRelationships.MultiTenantOrganization.Tenants.PostAsync(requestBody);


```