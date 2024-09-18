---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.app_catalogs.teams_apps.teams_apps_request_builder import TeamsAppsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetQueryParameters(
		filter = "id eq '876df28f-2e78-423b-94a5-44181bd0e225'",
		expand = ["appDefinitions"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.app_catalogs.teams_apps.get(request_configuration = request_configuration)


```