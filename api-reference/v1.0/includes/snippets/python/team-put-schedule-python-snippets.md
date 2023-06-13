---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Schedule()
request_body.enabled = True

request_body.time_zone = 'America/Chicago'




result = await client.teams.by_team_id('team-id').schedule.put(request_body = request_body)


```