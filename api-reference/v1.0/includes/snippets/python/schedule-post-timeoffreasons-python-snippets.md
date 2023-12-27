---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TimeOffReason(
	display_name = "Vacation",
	icon_type = TimeOffReasonIconType.Plane,
	is_active = True,
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_off_reasons.post(request_body)


```