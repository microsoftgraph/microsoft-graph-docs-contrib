---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeAudit customSecurityAttributeAudit = graphClient.auditLogs().customSecurityAttributeAudits("Directory_46ef8262-896f-4a39-9666-db82e22e778b_GXP3K_386490241")
	.buildRequest()
	.get();

```