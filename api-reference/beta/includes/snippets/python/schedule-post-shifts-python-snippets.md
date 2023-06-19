---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Shift()
request_body.id = 'SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8'

request_body.user_id = 'c5d0c76b-80c4-481c-be50-923cd8d680a1'

request_body.scheduling_group_id = 'TAG_228940ed-ff84-4e25-b129-1b395cf78be0'

shared_shift = ShiftItem()
shared_shift.display_name = 'Day shift'

shared_shift.notes = 'Please do inventory as part of your shift.'

shared_shift.startDateTime = DateTime('2019-03-11T15:00:00Z')

shared_shift.endDateTime = DateTime('2019-03-12T00:00:00Z')

shared_shift.theme(ScheduleEntityTheme.Blue('scheduleentitytheme.blue'))

activities_shift_activity1 = ShiftActivity()
activities_shift_activity1.is_paid = True

activities_shift_activity1.startDateTime = DateTime('2019-03-11T15:00:00Z')

activities_shift_activity1.endDateTime = DateTime('2019-03-11T15:15:00Z')

activities_shift_activity1.code = ''

activities_shift_activity1.display_name = 'Lunch'


activitiesArray []= activitiesShiftActivity1;
shared_shift.activities(activitiesArray)



request_body.shared_shift = shared_shift
draft_shift = ShiftItem()
draft_shift.display_name = 'Day shift'

draft_shift.notes = 'Please do inventory as part of your shift.'

draft_shift.startDateTime = DateTime('2019-03-11T15:00:00Z')

draft_shift.endDateTime = DateTime('2019-03-12T00:00:00Z')

draft_shift.theme(ScheduleEntityTheme.Blue('scheduleentitytheme.blue'))

activities_shift_activity1 = ShiftActivity()
activities_shift_activity1.is_paid = True

activities_shift_activity1.startDateTime = DateTime('2019-03-11T15:00:00Z')

activities_shift_activity1.endDateTime = DateTime('2019-03-11T15:30:00Z')

activities_shift_activity1.code = ''

activities_shift_activity1.display_name = 'Lunch'


activitiesArray []= activitiesShiftActivity1;
draft_shift.activities(activitiesArray)



request_body.draft_shift = draft_shift



result = await client.teams.by_team_id('team-id').schedule.shifts.post(request_body = request_body)


```