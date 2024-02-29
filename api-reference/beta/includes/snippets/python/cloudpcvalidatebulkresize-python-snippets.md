---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.validate_bulk_resize_post_request_body import ValidateBulkResizePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ValidateBulkResizePostRequestBody(
	cloud_pc_ids = [
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	],
	target_service_plan_id = "662009bc-7732-4f6f-8726-25883518b33e",
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.validate_bulk_resize.post(request_body)


```