---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SharePostRequestBody()
request_body.notify_team = True

request_body.startDateTime = DateTime('2018-10-08T00:00:00.000Z')

request_body.endDateTime = DateTime('2018-10-15T00:00:00.000Z')




await client.teams.by_team_id('team-id').schedule.share.post(request_body = request_body)


```