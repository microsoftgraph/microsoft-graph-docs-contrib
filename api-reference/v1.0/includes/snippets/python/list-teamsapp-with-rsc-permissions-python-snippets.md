---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.app_catalogs.teams_apps.teams_apps_request_builder import TeamsAppsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetQueryParameters(
		filter = "id eq 'a5228c26-a9ae-4702-90e0-79a5246d2f7d'",
		expand = ["appDefinitions($select=id,authorization)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.app_catalogs.teams_apps.get(request_configuration = request_configuration)


```