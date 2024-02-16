---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.set_priority_post_request_body import SetPriorityPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetPriorityPostRequestBody(
	priority = 8,
)

await graph_client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').set_priority.post(request_body)


```