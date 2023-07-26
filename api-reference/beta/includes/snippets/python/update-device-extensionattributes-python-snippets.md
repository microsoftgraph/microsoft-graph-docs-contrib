---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Device()
extension_attributes = OnPremisesExtensionAttributes()
extension_attributes.extension_attribute1 = 'BYOD-Device'


request_body.extension_attributes = extension_attributes



result = await client.devices.by_device_id('device-id').patch(request_body = request_body)


```