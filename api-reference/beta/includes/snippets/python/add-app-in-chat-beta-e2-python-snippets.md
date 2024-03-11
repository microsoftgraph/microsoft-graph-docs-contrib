---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.teams_app_installation import TeamsAppInstallation
from msgraph.generated.models.teams_app_permission_set import TeamsAppPermissionSet
from msgraph.generated.models.teams_app_resource_specific_permission import TeamsAppResourceSpecificPermission

graph_client = GraphServiceClient(credentials, scopes)

request_body = TeamsAppInstallation(
	consented_permission_set = TeamsAppPermissionSet(
		resource_specific_permissions = [
			TeamsAppResourceSpecificPermission(
				permission_value = "OnlineMeeting.ReadBasic.Chat",
				permission_type = TeamsAppResourceSpecificPermissionType.Delegated,
			),
			TeamsAppResourceSpecificPermission(
				permission_value = "OnlineMeetingIncomingAudio.Detect.Chat",
				permission_type = TeamsAppResourceSpecificPermissionType.Delegated,
			),
			TeamsAppResourceSpecificPermission(
				permission_value = "ChatMember.Read.Chat",
				permission_type = TeamsAppResourceSpecificPermissionType.Application,
			),
			TeamsAppResourceSpecificPermission(
				permission_value = "ChatMessage.Read.Chat",
				permission_type = TeamsAppResourceSpecificPermissionType.Application,
			),
		],
	),
	additional_data = {
			"teams_app@odata_bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770",
	}
)

result = await graph_client.chats.by_chat_id('chat-id').installed_apps.post(request_body)


```