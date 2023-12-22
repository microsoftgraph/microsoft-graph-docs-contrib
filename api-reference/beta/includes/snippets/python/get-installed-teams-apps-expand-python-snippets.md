---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsAppInstallationItemRequestBuilder.TeamsAppInstallationItemRequestBuilderGetQueryParameters(
		expand = ["teamsAppDefinition"],
)

request_configuration = TeamsAppInstallationItemRequestBuilder.TeamsAppInstallationItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').installed_apps.by_teams_app_installation_id('teamsAppInstallation-id').get(request_configuration = request_configuration)


```