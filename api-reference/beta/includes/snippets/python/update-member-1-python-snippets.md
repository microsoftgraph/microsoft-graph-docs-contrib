---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.aad_user_conversation_member import AadUserConversationMember

graph_client = GraphServiceClient(credentials, scopes)

request_body = AadUserConversationMember(
	odata_type = "#microsoft.graph.aadUserConversationMember",
	roles = [
		"owner",
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').members.by_conversation_member_id('conversationMember-id').patch(request_body)


```