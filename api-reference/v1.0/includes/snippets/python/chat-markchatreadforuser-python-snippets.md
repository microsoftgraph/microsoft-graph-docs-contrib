---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.chats.item.mark_chat_read_for_user.mark_chat_read_for_user_post_request_body import MarkChatReadForUserPostRequestBody
from msgraph.generated.models.teamwork_user_identity import TeamworkUserIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MarkChatReadForUserPostRequestBody(
	user = TeamworkUserIdentity(
		id = "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2",
		additional_data = {
				"tenant_id" : "2a690434-97d9-4eed-83a6-f5f13600199a",
		}
	),
)

await graph_client.chats.by_chat_id('chat-id').mark_chat_read_for_user.post(request_body)


```