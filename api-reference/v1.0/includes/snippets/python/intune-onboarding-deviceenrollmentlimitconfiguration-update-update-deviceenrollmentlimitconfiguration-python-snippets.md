---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_enrollment_limit_configuration import DeviceEnrollmentLimitConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceEnrollmentLimitConfiguration(
	odata_type = "#microsoft.graph.deviceEnrollmentLimitConfiguration",
	display_name = "Display Name value",
	description = "Description value",
	priority = 8,
	version = 7,
	limit = 5,
)

result = await graph_client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').patch(request_body)


```