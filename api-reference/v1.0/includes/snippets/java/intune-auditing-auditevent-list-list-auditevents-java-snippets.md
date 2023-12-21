---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuditEventCollectionPage auditEvents = graphClient.deviceManagement().auditEvents()
	.buildRequest()
	.get();

```