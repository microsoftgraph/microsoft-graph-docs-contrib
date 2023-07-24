---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MacOSDeviceFeaturesConfiguration()
request_body.@odata_type = '#microsoft.graph.macOSDeviceFeaturesConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7




result = await client.device_management.device_configurations.post(request_body = request_body)


```