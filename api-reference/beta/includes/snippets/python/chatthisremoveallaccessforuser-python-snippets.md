---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.chats.item.remove_all_access_for_user.remove_all_access_for_user_post_request_body import RemoveAllAccessForUserPostRequestBody
from msgraph_beta.generated.models.teamwork_user_identity import TeamworkUserIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoveAllAccessForUserPostRequestBody(
	user = TeamworkUserIdentity(
		odata_type = "microsoft.graph.teamworkUserIdentity",
	),
)

await graph_client.chats.by_chat_id('chat-id').remove_all_access_for_user.post(request_body)


```