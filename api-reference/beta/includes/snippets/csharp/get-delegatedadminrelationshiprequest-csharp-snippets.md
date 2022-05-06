---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delegatedAdminRelationshipRequest = await graphClient.TenantRelationships.DelegatedAdminRelationships["{delegatedAdminRelationship-id}"].Requests["{delegatedAdminRelationshipRequest-id}"]
	.Request()
	.GetAsync();

```