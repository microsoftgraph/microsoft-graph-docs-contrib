---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.chat import Chat
from msgraph.generated.models.conversation_member import ConversationMember
from msgraph.generated.models.aad_user_conversation_member import AadUserConversationMember
from msgraph.generated.models.teams_app_installation import TeamsAppInstallation

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
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')",
			}
		),
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')",
			}
		),
	],
	installed_apps = [
		TeamsAppInstallation(
			additional_data = {
					"teams_app@odata_bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/05F59CEC-A742-4A50-A62E-202A57E478A4",
			}
		),
	],
)

result = await graph_client.chats.post(request_body)


```