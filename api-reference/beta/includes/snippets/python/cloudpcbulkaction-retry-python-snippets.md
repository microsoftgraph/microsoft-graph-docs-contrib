---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_bulk_action import CloudPcBulkAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcBulkAction(
	odata_type = "#microsoft.graph.cloudPcBulkAction",
	cloud_pc_ids = [
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	],
)

await graph_client.device_management.virtual_endpoint.bulk_actions.by_cloud_pc_bulk_action_id('cloudPcBulkAction-id').retry.post(request_body)


```