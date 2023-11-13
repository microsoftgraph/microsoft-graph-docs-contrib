---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Channel(
	odata_type = "#Microsoft.Graph.channel",
	membership_type = ChannelMembershipType.Private,
	display_name = "My First Private Channel",
	description = "This is my first private channels",
	members = [
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('jacob@contoso.com')",
			}
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.post(request_body)


```