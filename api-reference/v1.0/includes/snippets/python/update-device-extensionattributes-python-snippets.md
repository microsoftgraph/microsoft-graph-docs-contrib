---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Device()
additional_data = [
'extension_attributes' => request_body = ExtensionAttributes()
		request_body.extension_attribute1 = 'BYOD-Device'


request_body.extension_attributes = extensionAttributes

];
request_body.additional_data(additional_data)





result = await client.devices.by_device_id('device-id').patch(request_body = request_body)


```