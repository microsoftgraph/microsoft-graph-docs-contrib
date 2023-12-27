---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderPostQueryParameters(
		requires_review = "true",
)

request_configuration = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderPostRequestConfiguration(
query_parameters = query_params,
)

await graph_client.app_catalogs.teams_apps.post(request_configuration = request_configuration)


```