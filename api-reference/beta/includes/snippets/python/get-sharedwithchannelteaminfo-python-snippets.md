---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').shared_with_teams.by_shared_with_channel_team_info_id('sharedWithChannelTeamInfo-id').get()


```