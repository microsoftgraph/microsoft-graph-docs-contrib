---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device import Device

graph_client = GraphServiceClient(credentials, scopes)

request_body = Device(
	account_enabled = False,
)

result = await graph_client.devices.by_device_id('device-id').patch(request_body)


```