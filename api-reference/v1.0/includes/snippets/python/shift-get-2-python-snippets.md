---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ShiftPreferences()
request_body.id = 'SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7'

availability_shift_availability1 = ShiftAvailability()
availability_shift_availability1recurrence = PatternedRecurrence()
availability_shift_availability1recurrencepattern = RecurrencePattern()
availability_shift_availability1recurrencepattern.type(RecurrencePatternType.Weekly('recurrencepatterntype.weekly'))

availability_shift_availability1recurrencepattern.DaysOfWeek([availability_shift_availability1recurrencepattern.dayofweek(DayOfWeek.Monday('dayofweek.monday'))
availability_shift_availability1recurrencepattern.dayofweek(DayOfWeek.Wednesday('dayofweek.wednesday'))
availability_shift_availability1recurrencepattern.dayofweek(DayOfWeek.Friday('dayofweek.friday'))
])

availability_shift_availability1recurrencepattern.Interval = 1


availability_shift_availability1recurrence.pattern = availability_shift_availability1recurrencepattern
availability_shift_availability1recurrencerange = RecurrenceRange()
availability_shift_availability1recurrencerange.type(RecurrenceRangeType.NoEnd('recurrencerangetype.noend'))


availability_shift_availability1recurrence.range = availability_shift_availability1recurrencerange

availability_shift_availability1.recurrence = availability_shift_availability1recurrence
availability_shift_availability1.time_zone = 'Pacific Standard Time'

availability_shift_availability1.timeSlots=null


availabilityArray []= availabilityShiftAvailability1;
request_body.availability(availabilityArray)


additional_data = [
'@odata_etag' => '1a371e53-f0a6-4327-a1ee-e3c56e4b38aa', 
];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').settings.shift_preferences.patch(request_body = request_body)


```