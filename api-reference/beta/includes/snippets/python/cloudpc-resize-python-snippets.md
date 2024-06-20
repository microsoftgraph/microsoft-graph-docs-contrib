---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.cloudpcs.item.resize.resize_post_request_body import ResizePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ResizePostRequestBody(
	target_service_plan_id = "30d0e128-de93-41dc-89ec-33d84bb662a0",
)

await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').resize.post(request_body)


```