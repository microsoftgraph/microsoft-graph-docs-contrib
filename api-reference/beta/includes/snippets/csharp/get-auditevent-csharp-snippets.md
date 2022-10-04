---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var auditEvent = await graphClient.TenantRelationships.ManagedTenants.AuditEvents["{managedTenants.auditEvent-id}"]
	.Request()
	.GetAsync();

```