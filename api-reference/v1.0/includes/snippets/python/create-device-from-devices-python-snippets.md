---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device import Device
from msgraph.generated.models.alternative_security_id import AlternativeSecurityId

graph_client = GraphServiceClient(credentials, scopes)

request_body = Device(
	account_enabled = False,
	alternative_security_ids = [
		AlternativeSecurityId(
			type = 2,
			key = base64.urlsafe_b64decode("base64Y3YxN2E1MWFlYw=="),
		),
	],
	device_id = "4c299165-6e8f-4b45-a5ba-c5d250a707ff",
	display_name = "Test device",
	operating_system = "linux",
	operating_system_version = "1",
)

result = await graph_client.devices.post(request_body)


```