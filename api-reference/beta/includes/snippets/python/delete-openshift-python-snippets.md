---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.teams.by_team_id('team-id').schedule.open_shifts.by_open_shift_id('openShift-id').delete()


```