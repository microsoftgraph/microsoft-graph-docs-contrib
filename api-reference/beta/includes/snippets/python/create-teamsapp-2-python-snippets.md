---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.app_catalogs.teams_apps.teams_apps_request_builder import TeamsAppsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderPostQueryParameters(
		requires_review = "true",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.app_catalogs.teams_apps.post(request_configuration = request_configuration)


```