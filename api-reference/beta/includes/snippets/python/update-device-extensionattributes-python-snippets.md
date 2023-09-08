---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Device(
	extension_attributes = OnPremisesExtensionAttributes(
		extension_attribute1 = "BYOD-Device",
	),
)

result = await graph_client.devices.by_device_id('device-id').patch(body = request_body)


```