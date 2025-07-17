---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.members.remove.remove_post_request_body import RemovePostRequestBody
from msgraph_beta.generated.models.conversation_member import ConversationMember
from msgraph_beta.generated.models.aad_user_conversation_member import AadUserConversationMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemovePostRequestBody(
	values = [
		AadUserConversationMember(
			odata_type = "microsoft.graph.aadUserConversationMember",
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('c04f28bf-ab68-40a2-974b-e6af31fa78fb')",
			}
		),
		AadUserConversationMember(
			odata_type = "microsoft.graph.aadUserConversationMember",
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')",
			}
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').members.remove.post(request_body)


```