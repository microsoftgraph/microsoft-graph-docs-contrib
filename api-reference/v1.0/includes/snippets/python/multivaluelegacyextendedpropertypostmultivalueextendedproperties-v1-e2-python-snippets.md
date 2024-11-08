---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.multi_value_legacy_extended_property import MultiValueLegacyExtendedProperty
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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