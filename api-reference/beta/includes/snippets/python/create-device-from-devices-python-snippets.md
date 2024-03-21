---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device import Device
from msgraph.generated.models.alternative_security_id import AlternativeSecurityId

graph_client = GraphServiceClient(credentials, scopes)

request_body = Device(
	account_enabled = True,
	alternative_security_ids = [
		AlternativeSecurityId(
			type = 99,
			identity_provider = "identityProvider-value",
			key = base64.urlsafe_b64decode("base64Y3YxN2E1MWFlYw=="),
		),
	],
	approximate_last_sign_in_date_time = "2016-10-19T10:37:00Z",
	device_id = "deviceId-value",
	device_metadata = "deviceMetadata-value",
	device_version = 99,
)

result = await graph_client.devices.post(request_body)


```