---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "tenantId" };
	requestConfiguration.QueryParameters.Expand = new string []{ "identitySynchronization" };
});


```