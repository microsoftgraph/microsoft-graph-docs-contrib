---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AddPostRequestBody(
	values = [
		AadUserConversationMember(
			odata_type = "microsoft.graph.aadUserConversationMember",
			roles = [
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('jacob@contoso.com')",
			}
		),
		AadUserConversationMember(
			odata_type = "microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('alex@contoso.com')",
			}
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').members.add.post(request_body)


```