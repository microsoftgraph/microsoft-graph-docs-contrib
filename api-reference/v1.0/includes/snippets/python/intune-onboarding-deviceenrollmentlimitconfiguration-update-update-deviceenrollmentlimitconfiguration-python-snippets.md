---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = DeviceEnrollmentLimitConfiguration(
	odata_type = "#microsoft.graph.deviceEnrollmentLimitConfiguration",
	display_name = "Display Name value",
	description = "Description value",
	priority = 8,
	version = 7,
	limit = 5,
)

result = await graph_client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').patch(body = request_body)


```