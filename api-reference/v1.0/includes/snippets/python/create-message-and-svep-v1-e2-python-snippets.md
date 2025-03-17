---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.single_value_legacy_extended_property import SingleValueLegacyExtendedProperty
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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