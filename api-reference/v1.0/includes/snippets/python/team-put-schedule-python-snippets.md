---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Schedule(
	enabled = True,
	time_zone = "America/Chicago",
)

result = await graph_client.teams.by_team_id('team-id').schedule.put(request_body)


```