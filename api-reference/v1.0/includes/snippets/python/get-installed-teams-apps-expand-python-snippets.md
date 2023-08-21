---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TeamsAppInstallationRequestBuilder.TeamsAppInstallationRequestBuilderGetQueryParameters(
		expand = ["teamsAppDefinition"],
)

request_configuration = TeamsAppInstallationRequestBuilder.TeamsAppInstallationRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.teams.by_team_id('team-id').installed_apps.by_installed_app_id('teamsAppInstallation-id').get(request_configuration = request_configuration)


```