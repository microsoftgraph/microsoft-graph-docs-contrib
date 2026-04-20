---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.teamwork.delete_targeted_message.delete_targeted_message_post_request_body import DeleteTargetedMessagePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeleteTargetedMessagePostRequestBody(
	team_id = "3Aeeaa4e946d674c4f8d4dded613780f45@thread.v2",
	channel_id = "19:eeaa4e946d674c4f8d4dded613780f45@thread.v2",
	message_id = "1580849738240",
)

await graph_client.users.by_user_id('user-id').teamwork.delete_targeted_message.post(request_body)


```