---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_scope_teams_app_installation import UserScopeTeamsAppInstallation

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserScopeTeamsAppInstallation(
	additional_data = {
			"teams_app@odata_bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a",
	}
)

result = await graph_client.users.by_user_id('user-id').teamwork.installed_apps.post(request_body)


```