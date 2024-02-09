---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.chat import Chat
from msgraph.generated.models.conversation_member import ConversationMember
from msgraph.generated.models.aad_user_conversation_member import AadUserConversationMember

graph_client = GraphServiceClient(credentials, scopes)

request_body = Chat(
	chat_type = ChatType.OneOnOne,
	members = [
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')",
			}
		),
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/v1.0/users('alex@contoso.com')",
			}
		),
	],
)

result = await graph_client.chats.post(request_body)


```