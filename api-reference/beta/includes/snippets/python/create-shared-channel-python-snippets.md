---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.channel import Channel
from msgraph_beta.generated.models.channel_membership_type import ChannelMembershipType
from msgraph_beta.generated.models.conversation_member import ConversationMember
from msgraph_beta.generated.models.aad_user_conversation_member import AadUserConversationMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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