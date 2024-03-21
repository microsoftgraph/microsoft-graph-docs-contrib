---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.teamwork.installedApps.item.user_scope_teams_app_installation_item_request_builder import UserScopeTeamsAppInstallationItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserScopeTeamsAppInstallationItemRequestBuilder.UserScopeTeamsAppInstallationItemRequestBuilderGetQueryParameters(
		expand = ["teamsAppDefinition"],
)

request_configuration = UserScopeTeamsAppInstallationItemRequestBuilder.UserScopeTeamsAppInstallationItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').teamwork.installed_apps.by_user_scope_teams_app_installation_id('userScopeTeamsAppInstallation-id').get(request_configuration = request_configuration)


```