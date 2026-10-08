---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.chats.item.remove_all_access_for_user.remove_all_access_for_user_post_request_body import RemoveAllAccessForUserPostRequestBody
from msgraph.generated.models.teamwork_user_identity import TeamworkUserIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoveAllAccessForUserPostRequestBody(
	user = TeamworkUserIdentity(
		odata_type = "microsoft.graph.teamworkUserIdentity",
		id = "f47ac10b-58cc-4372-a567-0e02b2c3d479",
		additional_data = {
				"tenant_id" : "a1b2c3d4-e5f6-7890-1234-567890abcdef",
		}
	),
)

await graph_client.chats.by_chat_id('chat-id').remove_all_access_for_user.post(request_body)


```