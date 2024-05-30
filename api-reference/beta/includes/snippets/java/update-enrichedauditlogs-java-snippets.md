---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogs enrichedAuditLogs = new com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogs();
enrichedAuditLogs.setOdataType("#microsoft.graph.networkaccess.enrichedAuditLogs");
com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogsSettings sharepoint = new com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogsSettings();
sharepoint.setOdataType("microsoft.graph.networkaccess.enrichedAuditLogsSettings");
enrichedAuditLogs.setSharepoint(sharepoint);
com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogsSettings teams = new com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogsSettings();
teams.setOdataType("microsoft.graph.networkaccess.enrichedAuditLogsSettings");
enrichedAuditLogs.setTeams(teams);
com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogsSettings exchange = new com.microsoft.graph.beta.models.networkaccess.EnrichedAuditLogsSettings();
exchange.setOdataType("microsoft.graph.networkaccess.enrichedAuditLogsSettings");
enrichedAuditLogs.setExchange(exchange);
com.microsoft.graph.models.networkaccess.EnrichedAuditLogs result = graphClient.networkAccess().settings().enrichedAuditLogs().patch(enrichedAuditLogs);


```