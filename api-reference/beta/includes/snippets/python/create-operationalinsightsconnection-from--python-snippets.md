---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.operational_insights_connection import OperationalInsightsConnection

graph_client = GraphServiceClient(credentials, scopes)

request_body = OperationalInsightsConnection(
	odata_type = "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
	azure_subscription_id = "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
	azure_resource_group_name = "target-resource-group",
	workspace_name = "my-workspace",
)

result = await graph_client.admin.windows.updates.resource_connections.post(request_body)


```