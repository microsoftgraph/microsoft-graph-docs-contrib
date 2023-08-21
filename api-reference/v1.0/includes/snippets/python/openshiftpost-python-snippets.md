---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OpenShift()
request_body.id = 'OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8'

request_body.scheduling_group_id = 'TAG_228940ed-ff84-4e25-b129-1b395cf78be0'

shared_open_shift = OpenShiftItem()
shared_open_shift.notes = 'InventoryManagement'

shared_open_shift.OpenSlotCount = 2

shared_open_shift.display_name = 'Dayshift'

shared_open_shift.startDateTime = DateTime('2018-10-04T00: 58: 45.340Z')

shared_open_shift.endDateTime = DateTime('2018-10-04T09: 50: 45.332Z')

shared_open_shift.theme(ScheduleEntityTheme.White('scheduleentitytheme.white'))

activities_shift_activity1 = ShiftActivity()
activities_shift_activity1.is_paid = True

activities_shift_activity1.startDateTime = DateTime('2018-10-04T00: 58: 45.340Z')

activities_shift_activity1.endDateTime = DateTime('2018-10-04T01: 58: 45.340Z')

activities_shift_activity1.code = ''

activities_shift_activity1.display_name = 'Lunch'


activitiesArray []= activitiesShiftActivity1;
shared_open_shift.activities(activitiesArray)



request_body.shared_open_shift = shared_open_shift
request_body.draftOpenShift=null

request_body.createdDateTime = DateTime('2019-03-14T04: 32: 51.451Z')

request_body.lastModifiedDateTime = DateTime('2019-03-14T05: 32: 51.451Z')

last_modified_by = IdentitySet()
last_modified_by.application=null

last_modified_by.device=null

last_modified_byuser = Identity()
last_modified_byuser.id = '366c0b19-49b1-41b5-a03f-9f3887bd0ed8'

last_modified_byuser.display_name = 'JohnDoe'


last_modified_by.user = last_modified_byuser
additional_data = [
'conversation' => 	null,
];
last_modified_by.additional_data(additional_data)



request_body.last_modified_by = last_modified_by


request_configuration = OpenShiftsRequestBuilder.OpenShiftsRequestBuilderPostRequestConfiguration(
headers = {
	'Authorization' : "Bearer {token}",
}

)


result = await client.teams.by_team_id('team-id').schedule.open_shifts.post(request_body = request_body, request_configuration = request_configuration)


```