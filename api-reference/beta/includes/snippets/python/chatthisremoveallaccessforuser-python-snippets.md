---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.remove_all_access_for_user.remove_all_access_for_user_post_request_body import RemoveAllAccessForUserPostRequestBody
from msgraph.generated.models.teamwork_user_identity import TeamworkUserIdentity

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoveAllAccessForUserPostRequestBody(
	user = TeamworkUserIdentity(
		odata_type = "microsoft.graph.teamworkUserIdentity",
	),
)

await graph_client.chats.by_chat_id('chat-id').remove_all_access_for_user.post(request_body)


```