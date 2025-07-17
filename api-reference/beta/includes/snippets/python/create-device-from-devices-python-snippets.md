---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.device import Device
from msgraph_beta.generated.models.alternative_security_id import AlternativeSecurityId
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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