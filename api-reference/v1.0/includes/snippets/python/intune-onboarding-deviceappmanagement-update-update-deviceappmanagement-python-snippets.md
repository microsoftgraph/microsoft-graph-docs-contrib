---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceAppManagement()
request_body.@odata_type = '#microsoft.graph.deviceAppManagement'

request_body.microsoftStoreForBusinessLastSuccessfulSyncDateTime = DateTime('2016-12-31T23:57:45.2453148-08:00')

request_body.is_enabled_for_microsoft_store_for_business = True

request_body.microsoft_store_for_business_language = 'Microsoft Store For Business Language value'

request_body.microsoftStoreForBusinessLastCompletedApplicationSyncTime = DateTime('2017-01-01T00:02:00.0421137-08:00')




result = await client.device_app_management.patch(request_body = request_body)


```