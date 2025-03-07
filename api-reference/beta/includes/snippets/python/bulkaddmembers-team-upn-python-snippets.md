---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.members.add.add_post_request_body import AddPostRequestBody
from msgraph_beta.generated.models.conversation_member import ConversationMember
from msgraph_beta.generated.models.aad_user_conversation_member import AadUserConversationMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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