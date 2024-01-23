---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Schedule(
	enabled = True,
	time_zone = "America/Chicago",
)

result = await graph_client.teams.by_team_id('team-id').schedule.put(request_body)


```