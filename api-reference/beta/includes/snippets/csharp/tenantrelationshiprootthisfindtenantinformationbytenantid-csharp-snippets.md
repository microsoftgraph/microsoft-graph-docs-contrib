---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantInformation = await graphClient.TenantRelationships
	.FindTenantInformationByTenantId("6babcaad-604b-40ac-a9d7-9fd97c0b779f")
	.Request()
	.GetAsync();

```