---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.deviceenrollmentconfigurations.item.set_priority.set_priority_post_request_body import SetPriorityPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetPriorityPostRequestBody(
	priority = 8,
)

await graph_client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').set_priority.post(request_body)


```