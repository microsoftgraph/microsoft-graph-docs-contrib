---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.security_action import SecurityAction
from msgraph.generated.models.key_value_pair import KeyValuePair
from msgraph.generated.models.security_vendor_information import SecurityVendorInformation

graph_client = GraphServiceClient(credentials, scopes)

request_body = SecurityAction(
	name = "BlockIp",
	action_reason = "Test",
	parameters = [
		KeyValuePair(
			name = "IP",
			value = "1.2.3.4",
		),
	],
	vendor_information = SecurityVendorInformation(
		provider = "Windows Defender ATP",
		vendor = "Microsoft",
	),
)

result = await graph_client.security.security_actions.post(request_body)


```