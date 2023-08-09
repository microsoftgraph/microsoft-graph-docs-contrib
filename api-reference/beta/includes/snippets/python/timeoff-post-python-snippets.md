---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TimeOff()
request_body.user_id = 'c5d0c76b-80c4-481c-be50-923cd8d680a1'

shared_time_off = TimeOffItem()
shared_time_off.time_off_reason_id = 'TOR_891045ca-b5d2-406b-aa06-a3c8921245d7'

shared_time_off.startDateTime = DateTime('2019-03-11T07:00:00Z')

shared_time_off.endDateTime = DateTime('2019-03-12T07:00:00Z')

shared_time_off.theme(ScheduleEntityTheme.White('scheduleentitytheme.white'))


request_body.shared_time_off = shared_time_off
draft_time_off = TimeOffItem()
draft_time_off.time_off_reason_id = 'TOR_891045ca-b5d2-406b-aa06-a3c8921245d7'

draft_time_off.startDateTime = DateTime('2019-03-11T07:00:00Z')

draft_time_off.endDateTime = DateTime('2019-03-12T07:00:00Z')

draft_time_off.theme(ScheduleEntityTheme.Pink('scheduleentitytheme.pink'))


request_body.draft_time_off = draft_time_off



result = await client.teams.by_team_id('team-id').schedule.time_off.post(request_body = request_body)


```