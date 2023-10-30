---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.app_catalogs.teams_apps.by_teams_app_id('teamsApp-id').app_definitions.by_teams_app_definition_id('teamsAppDefinition-id').bot.get()


```