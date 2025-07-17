---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.cloudpcs.validate_bulk_resize.validate_bulk_resize_post_request_body import ValidateBulkResizePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ValidateBulkResizePostRequestBody(
	cloud_pc_ids = [
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	],
	target_service_plan_id = "662009bc-7732-4f6f-8726-25883518b33e",
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.validate_bulk_resize.post(request_body)


```