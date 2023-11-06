---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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