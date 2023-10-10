---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnrichedAuditLogs enrichedAuditLogs = graphClient.networkaccess().settings().enrichedAuditLogs()
	.buildRequest()
	.get();

```