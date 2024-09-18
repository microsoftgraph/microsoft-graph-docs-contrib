---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').retrieve_cloud_p_c_remote_action_results.get()


```