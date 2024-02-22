---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.channel import Channel
from msgraph.generated.models.conversation_member import ConversationMember
from msgraph.generated.models.aad_user_conversation_member import AadUserConversationMember

graph_client = GraphServiceClient(credentials, scopes)

request_body = Channel(
	display_name = "My First Shared Channel",
	description = "This is my first shared channel",
	membership_type = ChannelMembershipType.Shared,
	members = [
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('7640023f-fe43-gv3f-9gg4-84a9efe4acd6')",
			}
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.post(request_body)


```