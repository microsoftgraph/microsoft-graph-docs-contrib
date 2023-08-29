---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = TeamsAppInstallationRequestBuilder.TeamsAppInstallationRequestBuilderGetQueryParameters(
		select = ["consentedPermissionSet","id"],
)

request_configuration = TeamsAppInstallationRequestBuilder.TeamsAppInstallationRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').installed_apps.by_installed_app_id('teamsAppInstallation-id').get(request_configuration = request_configuration)


```