---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var auditEvent = await graphClient.TenantRelationships.ManagedTenants.AuditEvent
	.Request()
	.GetAsync();

```