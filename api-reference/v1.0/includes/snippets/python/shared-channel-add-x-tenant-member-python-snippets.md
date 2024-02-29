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
	],
	tenant_id = "a18103d1-a6ef-4f66-ac64-e4ef42ea8681",
	additional_data = {
			"user@odata_bind" : "https://graph.microsoft.com/v1.0/users/bc3598dd-cce4-4742-ae15-173429951408",
	}
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').members.post(request_body)


```