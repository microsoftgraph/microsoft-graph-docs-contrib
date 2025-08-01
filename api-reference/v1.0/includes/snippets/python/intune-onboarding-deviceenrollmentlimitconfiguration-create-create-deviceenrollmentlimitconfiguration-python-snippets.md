---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_enrollment_limit_configuration import DeviceEnrollmentLimitConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceEnrollmentLimitConfiguration(
	odata_type = "#microsoft.graph.deviceEnrollmentLimitConfiguration",
	display_name = "Display Name value",
	description = "Description value",
	priority = 8,
	version = 7,
	limit = 5,
)

result = await graph_client.device_management.device_enrollment_configurations.post(request_body)


```