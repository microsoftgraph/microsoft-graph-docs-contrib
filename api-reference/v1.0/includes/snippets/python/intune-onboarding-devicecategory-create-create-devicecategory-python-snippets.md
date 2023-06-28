---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceCategory()
request_body.@odata_type = '#microsoft.graph.deviceCategory'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'




result = await client.device_management.device_categories.post(request_body = request_body)


```