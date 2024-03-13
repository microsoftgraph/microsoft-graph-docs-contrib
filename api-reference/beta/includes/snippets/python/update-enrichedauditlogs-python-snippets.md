---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.enriched_audit_logs import EnrichedAuditLogs
from msgraph.generated.models.enriched_audit_logs_settings import EnrichedAuditLogsSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = EnrichedAuditLogs(
	odata_type = "#microsoft.graph.networkaccess.enrichedAuditLogs",
	sharepoint = EnrichedAuditLogsSettings(
		odata_type = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	),
	teams = EnrichedAuditLogsSettings(
		odata_type = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	),
	exchange = EnrichedAuditLogsSettings(
		odata_type = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	),
)

result = await graph_client.network_access.settings.enriched_audit_logs.patch(request_body)


```