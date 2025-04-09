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
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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