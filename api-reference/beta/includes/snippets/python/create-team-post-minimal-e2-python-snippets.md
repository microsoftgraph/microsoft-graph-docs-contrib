---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.team import Team
from msgraph_beta.generated.models.conversation_member import ConversationMember
from msgraph_beta.generated.models.aad_user_conversation_member import AadUserConversationMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Team(
	display_name = "My Sample Team",
	description = "My sample team’s description",
	first_channel_name = "My first channel of the sample team",
	members = [
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('0040b377-61d8-43db-94f5-81374122dc7e')",
			}
		),
	],
	additional_data = {
			"template@odata_bind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')",
	}
)

result = await graph_client.teams.post(request_body)


```