---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.enriched_audit_logs import EnrichedAuditLogs
from msgraph_beta.generated.models.networkaccess.enriched_audit_logs_settings import EnrichedAuditLogsSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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