---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.virtual_endpoint.bulk_actions.by_cloud_pc_bulk_action_id('cloudPcBulkAction-id').get()


```