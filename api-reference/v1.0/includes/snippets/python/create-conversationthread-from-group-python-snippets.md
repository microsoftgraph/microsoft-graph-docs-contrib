---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.conversation_thread import ConversationThread
from msgraph.generated.models.post import Post
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConversationThread(
	topic = "New Conversation Thread Topic",
	posts = [
		Post(
			body = ItemBody(
				content_type = BodyType.Html,
				content = "this is body content",
			),
			new_participants = [
				Recipient(
					email_address = EmailAddress(
						name = "Alex Darrow",
						address = "alexd@contoso.com",
					),
				),
			],
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').threads.post(request_body)


```