---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.conversation_thread import ConversationThread
from msgraph.generated.models.post import Post
from msgraph.generated.models.item_body import ItemBody

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