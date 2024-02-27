---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.conversation_thread import ConversationThread
from msgraph.generated.models.post import Post
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

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