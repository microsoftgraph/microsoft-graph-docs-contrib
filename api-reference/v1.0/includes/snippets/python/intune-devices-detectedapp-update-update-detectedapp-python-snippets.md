---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DetectedApp()
request_body.@odata_type = '#microsoft.graph.detectedApp'

request_body.display_name = 'Display Name value'

request_body.version = 'Version value'

request_body.SizeInByte = 10

request_body.DeviceCount = 11

request_body.publisher = 'Publisher value'

request_body.platform(DetectedAppPlatformType.Windows('detectedappplatformtype.windows'))




result = await client.device_management.detected_apps.by_detected_app_id('detectedApp-id').patch(request_body = request_body)


```