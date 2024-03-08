---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.teams_tab import TeamsTab

graph_client = GraphServiceClient(credentials, scopes)

request_body = TeamsTab(
	display_name = "My Contoso Tab - updated",
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').tabs.by_teams_tab_id('teamsTab-id').patch(request_body)


```