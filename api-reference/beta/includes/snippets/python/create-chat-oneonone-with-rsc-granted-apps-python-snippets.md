---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.chat import Chat
from msgraph_beta.generated.models.chat_type import ChatType
from msgraph_beta.generated.models.conversation_member import ConversationMember
from msgraph_beta.generated.models.aad_user_conversation_member import AadUserConversationMember
from msgraph_beta.generated.models.teams_app_installation import TeamsAppInstallation
from msgraph_beta.generated.models.teams_app_permission_set import TeamsAppPermissionSet
from msgraph_beta.generated.models.teams_app_resource_specific_permission import TeamsAppResourceSpecificPermission
from msgraph_beta.generated.models.teams_app_resource_specific_permission_type import TeamsAppResourceSpecificPermissionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Chat(
	chat_type = ChatType.OneOnOne,
	members = [
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('4b822dfc-2864-44e6-aa1e-7e0e8552168f')",
			}
		),
		AadUserConversationMember(
			odata_type = "#microsoft.graph.aadUserConversationMember",
			roles = [
				"owner",
			],
			additional_data = {
					"user@odata_bind" : "https://graph.microsoft.com/beta/users('6d1e1501-7a3d-45b7-b71b-68d372e5ce14')",
			}
		),
	],
	installed_apps = [
		TeamsAppInstallation(
			consented_permission_set = TeamsAppPermissionSet(
				resource_specific_permissions = [
					TeamsAppResourceSpecificPermission(
						permission_value = "ChatMessage.Read.Chat",
						permission_type = TeamsAppResourceSpecificPermissionType.Application,
					),
					TeamsAppResourceSpecificPermission(
						permission_value = "OnlineMeeting.ReadBasic.Chat",
						permission_type = TeamsAppResourceSpecificPermissionType.Application,
					),
				],
			),
			additional_data = {
					"teams_app@odata_bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/8e55a7b1-6766-4f0a-8610-ecacfe3d569a",
			}
		),
	],
)

result = await graph_client.chats.post(request_body)


```