---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TimeOffReason()
request_body.display_name = 'Vacation'

request_body.icontype(TimeOffReasonIconType.Plane('timeoffreasonicontype.plane'))

request_body.is_active = True




result = await client.teams.by_team_id('team-id').schedule.time_off_reasons.post(request_body = request_body)


```