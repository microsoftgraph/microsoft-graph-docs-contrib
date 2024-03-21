---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.teams.by_team_id('team-id').schedule.open_shift_change_requests.by_open_shift_change_request_id('openShiftChangeRequest-id').get()


```