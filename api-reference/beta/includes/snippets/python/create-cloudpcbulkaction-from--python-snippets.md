---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_bulk_action import CloudPcBulkAction

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcBulkAction(
	odata_type = "#microsoft.graph.cloudPcBulkAction",
	display_name = "Bulk Power Off by Andy",
	cloud_pc_ids = [
		"d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
		"85994912-197b-4927-b569-447bd81350ec",
	],
	scheduled_during_maintenance_window = True,
)

result = await graph_client.device_management.virtual_endpoint.bulk_actions.post(request_body)


```