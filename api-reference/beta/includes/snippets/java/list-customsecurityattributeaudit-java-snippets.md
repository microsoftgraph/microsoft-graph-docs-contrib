---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeAuditCollectionPage customSecurityAttributeAudits = graphClient.auditLogs().customSecurityAttributeAudits()
	.buildRequest()
	.top(1)
	.get();

```