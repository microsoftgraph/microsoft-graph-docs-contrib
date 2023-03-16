---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "tenantId" };
	requestConfiguration.QueryParameters.Expand = new string []{ "identitySynchronization" };
});


```