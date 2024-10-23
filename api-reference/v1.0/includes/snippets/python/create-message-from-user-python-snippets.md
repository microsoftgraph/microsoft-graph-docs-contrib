---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.importance import Importance
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Message(
	subject = "Did you see last night's game?",
	importance = Importance.Low,
	body = ItemBody(
		content_type = BodyType.Html,
		content = "They were <b>awesome</b>!",
	),
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "AdeleV@contoso.com",
			),
		),
	],
)

result = await graph_client.me.messages.post(request_body)


```