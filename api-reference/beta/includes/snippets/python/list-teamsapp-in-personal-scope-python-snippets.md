---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.appCatalogs.teamsApps.teams_apps_request_builder import TeamsAppsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetQueryParameters(
		expand = ["appDefinitions($select=id,displayName,allowedInstallationScopes)"],
		filter = "appDefinitions/any(a:a/allowedInstallationScopes has 'personal')",
)

request_configuration = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.app_catalogs.teams_apps.get(request_configuration = request_configuration)


```