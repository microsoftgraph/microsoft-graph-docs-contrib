---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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
			"teams_app@odata_bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a",
	}
)

result = await graph_client.users.by_user_id('user-id').teamwork.installed_apps.post(request_body)


```