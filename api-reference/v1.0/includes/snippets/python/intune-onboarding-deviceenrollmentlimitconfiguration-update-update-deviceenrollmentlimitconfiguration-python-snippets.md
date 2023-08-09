---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceEnrollmentLimitConfiguration()
request_body.@odata_type = '#microsoft.graph.deviceEnrollmentLimitConfiguration'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.Priority = 8

request_body.Version = 7

request_body.Limit = 5




result = await client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').patch(request_body = request_body)


```