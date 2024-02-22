---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.get_provisioned_cloud_p_cs_with_group_id_with_service_plan_id("{groupId}","{servicePlanId}").get()


```