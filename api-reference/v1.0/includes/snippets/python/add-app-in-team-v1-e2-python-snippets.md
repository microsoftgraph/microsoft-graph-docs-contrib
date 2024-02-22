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
				permission_value = "ChatMessage.Read.Chat",
				permission_type = TeamsAppResourceSpecificPermissionType.Application,
			),
		],
	),
	additional_data = {
			"teams_app@odata_bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785",
	}
)

result = await graph_client.teams.by_team_id('team-id').installed_apps.post(request_body)


```