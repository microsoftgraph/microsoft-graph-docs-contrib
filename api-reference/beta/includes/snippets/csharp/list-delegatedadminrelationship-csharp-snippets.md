---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delegatedAdminRelationships = await graphClient.TenantRelationships.DelegatedAdminRelationships
	.Request()
	.GetAsync();

```