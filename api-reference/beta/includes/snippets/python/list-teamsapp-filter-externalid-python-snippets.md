---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.app_catalogs.teams_apps.teams_apps_request_builder import TeamsAppsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetQueryParameters(
		filter = "externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'",
)

request_configuration = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.app_catalogs.teams_apps.get(request_configuration = request_configuration)


```