---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.installedapps.item.upgrade.upgrade_post_request_body import UpgradePostRequestBody
from msgraph.generated.models.teams_app_permission_set import TeamsAppPermissionSet
from msgraph.generated.models.teams_app_resource_specific_permission import TeamsAppResourceSpecificPermission

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpgradePostRequestBody(
	consented_permission_set = TeamsAppPermissionSet(
		resource_specific_permissions = [
			TeamsAppResourceSpecificPermission(
				permission_value = "OnlineMeeting.ReadBasic.Chat",
				permission_type = TeamsAppResourceSpecificPermissionType.Delegated,
			),
			TeamsAppResourceSpecificPermission(
				permission_value = "ChatMember.Read.Chat",
				permission_type = TeamsAppResourceSpecificPermissionType.Application,
			),
		],
	),
)

await graph_client.chats.by_chat_id('chat-id').installed_apps.by_teams_app_installation_id('teamsAppInstallation-id').upgrade.post(request_body)


```