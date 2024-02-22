---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_scope_teams_app_installation import UserScopeTeamsAppInstallation
from msgraph.generated.models.teams_app_permission_set import TeamsAppPermissionSet
from msgraph.generated.models.teams_app_resource_specific_permission import TeamsAppResourceSpecificPermission

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserScopeTeamsAppInstallation(
	consented_permission_set = TeamsAppPermissionSet(
		resource_specific_permissions = [
			TeamsAppResourceSpecificPermission(
				permission_value = "TeamsActivity.Send.User",
				permission_type = TeamsAppResourceSpecificPermissionType.Application,
			),
		],
	),
	additional_data = {
			"teams_app@odata_bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a",
	}
)

result = await graph_client.users.by_user_id('user-id').teamwork.installed_apps.post(request_body)


```