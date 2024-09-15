---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.conversation import Conversation
from msgraph_beta.generated.models.conversation_thread import ConversationThread
from msgraph_beta.generated.models.post import Post
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Conversation(
	topic = "New head count",
	threads = [
		ConversationThread(
			posts = [
				Post(
					body = ItemBody(
						content_type = BodyType.Html,
						content = "The confirmation will come by the end of the week.",
					),
					new_participants = [
						Recipient(
							email_address = EmailAddress(
								name = "Adele Vance",
								address = "AdeleV@contoso.com",
							),
						),
					],
				),
			],
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').conversations.post(request_body)


```