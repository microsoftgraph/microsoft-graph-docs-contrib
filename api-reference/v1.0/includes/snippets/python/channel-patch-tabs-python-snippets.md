---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamsTab()
request_body.display_name = 'My Contoso Tab - updated'




result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').tabs.by_tab_id('teamsTab-id').patch(request_body = request_body)


```