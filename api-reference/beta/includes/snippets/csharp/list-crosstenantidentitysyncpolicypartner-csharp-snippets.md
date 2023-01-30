---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var partners = await graphClient.Policies.CrossTenantAccessPolicy.Partners
	.Request()
	.Expand("identitySynchronization")
	.Select("tenantId")
	.GetAsync();

```