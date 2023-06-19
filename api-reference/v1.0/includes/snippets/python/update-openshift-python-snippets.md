---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OpenShift()
request_body.scheduling_group_id = 'TAG_228940ed-ff84-4e25-b129-1b395cf78be0'

shared_open_shift = OpenShiftItem()
shared_open_shift.notes = 'Inventory Management'

shared_open_shift.OpenSlotCount = 5

shared_open_shift.display_name = 'Field shift'

shared_open_shift.startDateTime = DateTime('2018-10-04T00:58:45.340Z')

shared_open_shift.endDateTime = DateTime('2018-10-04T09:50:45.332Z')

shared_open_shift.theme(ScheduleEntityTheme.White('scheduleentitytheme.white'))

activities_shift_activity1 = ShiftActivity()
activities_shift_activity1.is_paid = True

activities_shift_activity1.startDateTime = DateTime('2018-10-04T00:58:45.340Z')

activities_shift_activity1.endDateTime = DateTime('2018-10-04T01:58:45.340Z')

activities_shift_activity1.code = ''

activities_shift_activity1.display_name = 'Lunch'


activitiesArray []= activitiesShiftActivity1;
shared_open_shift.activities(activitiesArray)



request_body.shared_open_shift = shared_open_shift
request_body.draftOpenShift=null




result = await client.teams.by_team_id('team-id').schedule.open_shifts.by_open_shift_id('openShift-id').patch(request_body = request_body)


```