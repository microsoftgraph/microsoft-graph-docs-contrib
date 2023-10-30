---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	multi_value_extended_properties = [
		MultiValueLegacyExtendedProperty(
			id = "StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette",
			value = [
				"Green",
				"Aqua",
				"Blue",
			],
		),
	],
)

result = await graph_client.me.messages.by_message_id('message-id').patch(request_body)


```