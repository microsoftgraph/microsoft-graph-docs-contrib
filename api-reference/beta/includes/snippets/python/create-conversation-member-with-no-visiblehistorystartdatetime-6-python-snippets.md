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
	tenant_id = "4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1",
	additional_data = {
			"user@odata_bind" : "https://graph.microsoft.com/beta/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d",
	}
)

result = await graph_client.chats.by_chat_id('chat-id').members.post(request_body)


```