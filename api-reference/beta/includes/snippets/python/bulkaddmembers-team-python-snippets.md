---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddPostRequestBody(
	values = [
		AadUserConversationMember(
			odata_type = "microsoft.graph.aadUserConversationMember",
			roles = [
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')",
			}
		),
		AadUserConversationMember(
			odata_type = "microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')",
			}
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').members.add.post(request_body)


```