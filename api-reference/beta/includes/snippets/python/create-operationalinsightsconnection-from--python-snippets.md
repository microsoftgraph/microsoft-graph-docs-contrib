---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.operational_insights_connection import OperationalInsightsConnection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OperationalInsightsConnection(
	odata_type = "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
	azure_subscription_id = "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
	azure_resource_group_name = "target-resource-group",
	workspace_name = "my-workspace",
)

result = await graph_client.admin.windows.updates.resource_connections.post(request_body)


```