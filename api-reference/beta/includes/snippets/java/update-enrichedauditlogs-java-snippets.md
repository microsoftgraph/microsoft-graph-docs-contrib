---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnrichedAuditLogs enrichedAuditLogs = new EnrichedAuditLogs();
EnrichedAuditLogsSettings sharepoint = new EnrichedAuditLogsSettings();
enrichedAuditLogs.sharepoint = sharepoint;
EnrichedAuditLogsSettings teams = new EnrichedAuditLogsSettings();
enrichedAuditLogs.teams = teams;
EnrichedAuditLogsSettings exchange = new EnrichedAuditLogsSettings();
enrichedAuditLogs.exchange = exchange;

graphClient.networkAccess().settings().enrichedAuditLogs()
	.buildRequest()
	.patch(enrichedAuditLogs);

```