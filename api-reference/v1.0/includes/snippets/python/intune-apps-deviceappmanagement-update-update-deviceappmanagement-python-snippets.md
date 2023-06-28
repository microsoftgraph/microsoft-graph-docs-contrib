---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceAppManagement()
request_body.@odata_type = '#microsoft.graph.deviceAppManagement'




result = await client.device_app_management.patch(request_body = request_body)


```