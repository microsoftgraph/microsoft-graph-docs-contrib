---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcDeviceImage()
request_body.@odata_type = '#microsoft.graph.cloudPcDeviceImage'

request_body.display_name = 'Display Name value'

request_body.os_build_number = 'OS Build Number value'

request_body.operating_system = 'Operating System value'

request_body.version = 'Version value'

request_body.source_image_resource_id = '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage'




result = await client.device_management.virtual_endpoint.device_images.post(request_body = request_body)


```