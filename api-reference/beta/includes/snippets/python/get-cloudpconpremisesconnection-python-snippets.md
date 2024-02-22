---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.virtual_endpoint.on_premises_connections.by_cloud_pc_on_premises_connection_id('cloudPcOnPremisesConnection-id').get()


```