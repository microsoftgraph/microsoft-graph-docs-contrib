---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.conversation_thread import ConversationThread
from msgraph_beta.generated.models.post import Post
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConversationThread(
	topic = "Take your wellness days and rest",
	posts = [
		Post(
			body = ItemBody(
				content_type = BodyType.Html,
				content = "Waiting for the summer holidays.",
			),
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').conversations.by_conversation_id('conversation-id').threads.post(request_body)


```