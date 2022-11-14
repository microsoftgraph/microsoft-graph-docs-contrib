---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delegatedAdminRelationship = await graphClient.TenantRelationships.DelegatedAdminRelationships["{delegatedAdminRelationship-id}"]
	.Request()
	.GetAsync();

```