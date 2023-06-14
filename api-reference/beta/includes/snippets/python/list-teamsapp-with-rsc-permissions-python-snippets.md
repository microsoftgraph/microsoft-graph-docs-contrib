---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetQueryParameters(
		filter = "id eq 'a5228c26-a9ae-4702-90e0-79a5246d2f7d'",
		expand = ["appDefinitions($select=id,authorization)"],
)

request_configuration = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.app_catalogs.team_apps.get(request_configuration = request_configuration)


```