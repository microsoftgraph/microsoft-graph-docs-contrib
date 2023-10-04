---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AadUserConversationMember(
	odata_type = "#microsoft.graph.aadUserConversationMember",
	roles = [
		"owner",
	]
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').members.by_member_id('conversationMember-id').patch(body = request_body)


```