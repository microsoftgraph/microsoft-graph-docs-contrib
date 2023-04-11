---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuditEvent auditEvent = graphClient.tenantRelationships().managedTenants().auditEvents("{auditEventId}")
	.buildRequest()
	.get();

```