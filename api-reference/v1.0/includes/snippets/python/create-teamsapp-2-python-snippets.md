---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderPostQueryParameters(
		requiresReview = "true",
)

request_configuration = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderPostRequestConfiguration(
query_parameters = query_params,
)


await client.app_catalogs.team_apps.post(request_configuration = request_configuration)


```