---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuditEvent auditEvent = graphClient.deviceManagement().auditEvents("{auditEventId}")
	.buildRequest()
	.get();

```