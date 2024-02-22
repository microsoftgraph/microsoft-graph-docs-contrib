---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device import Device
from msgraph.generated.models.on_premises_extension_attributes import OnPremisesExtensionAttributes

graph_client = GraphServiceClient(credentials, scopes)

request_body = Device(
	extension_attributes = OnPremisesExtensionAttributes(
		extension_attribute1 = "BYOD-Device",
	),
)

result = await graph_client.devices.by_device_id('device-id').patch(request_body)


```