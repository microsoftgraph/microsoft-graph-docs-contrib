---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetQueryParameters(
		expand = ["appDefinitions($select=id,displayName,allowedInstallationScopes)"],
		filter = "appDefinitions/any(a:a/allowedInstallationScopes has 'personal')",
)

request_configuration = TeamsAppsRequestBuilder.TeamsAppsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.app_catalogs.team_apps.get(request_configuration = request_configuration)


```