---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.single_value_legacy_extended_property import SingleValueLegacyExtendedProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	single_value_extended_properties = [
		SingleValueLegacyExtendedProperty(
			id = "String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color",
			value = "Green",
		),
	],
)

result = await graph_client.me.messages.by_message_id('message-id').patch(request_body)


```