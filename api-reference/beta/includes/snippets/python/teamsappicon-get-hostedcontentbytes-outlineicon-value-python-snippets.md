---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.app_catalogs.teams_apps.by_teams_app_id('teamsApp-id').app_definitions.by_teams_app_definition_id('teamsAppDefinition-id').outline_icon.hosted_content.content.get()


```