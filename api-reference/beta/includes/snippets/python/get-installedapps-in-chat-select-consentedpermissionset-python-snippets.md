---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.installed_apps.item.teams_app_installation_item_request_builder import TeamsAppInstallationItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsAppInstallationItemRequestBuilder.TeamsAppInstallationItemRequestBuilderGetQueryParameters(
		select = ["consentedPermissionSet","id"],
)

request_configuration = TeamsAppInstallationItemRequestBuilder.TeamsAppInstallationItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').installed_apps.by_teams_app_installation_id('teamsAppInstallation-id').get(request_configuration = request_configuration)


```