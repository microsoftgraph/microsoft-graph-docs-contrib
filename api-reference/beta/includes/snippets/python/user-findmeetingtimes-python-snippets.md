---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = FindMeetingTimesPostRequestBody()
attendees_attendee_base1 = AttendeeBase()
attendees_attendee_base1.type(AttendeeType.Required('attendeetype.required'))

attendees_attendee_base1email_address = EmailAddress()
attendees_attendee_base1email_address.name = 'Alex Wilbur'

attendees_attendee_base1email_address.address = 'alexw@contoso.onmicrosoft.com'


attendees_attendee_base1.email_address = attendees_attendee_base1email_address

attendeesArray []= attendeesAttendeeBase1;
request_body.attendees(attendeesArray)


location_constraint = LocationConstraint()
location_constraint.is_required = False

location_constraint.suggest_location = False

locations_location_constraint_item1 = LocationConstraintItem()
locations_location_constraint_item1.resolve_availability = False

locations_location_constraint_item1.display_name = 'Conf room Hood'


locationsArray []= locationsLocationConstraintItem1;
location_constraint.locations(locationsArray)



request_body.location_constraint = location_constraint
time_constraint = TimeConstraint()
time_constraint.activitydomain(ActivityDomain.Work('activitydomain.work'))

time_slots_time_slot1 = TimeSlot()
time_slots_time_slot1start = DateTimeTimeZone()
time_slots_time_slot1start.date_time = '2019-04-16T09:00:00'

time_slots_time_slot1start.time_zone = 'Pacific Standard Time'


time_slots_time_slot1.start = time_slots_time_slot1start
time_slots_time_slot1end = DateTimeTimeZone()
time_slots_time_slot1end.date_time = '2019-04-18T17:00:00'

time_slots_time_slot1end.time_zone = 'Pacific Standard Time'


time_slots_time_slot1.end = time_slots_time_slot1end

timeSlotsArray []= timeSlotsTimeSlot1;
time_constraint.timeslots(timeSlotsArray)



request_body.time_constraint = time_constraint
request_body.is_organizer_optional = False

request_body.meetingduration =  \DateInterval('PT1H')

request_body.return_suggestion_reasons = True

request_body.MinimumAttendeePercentage = 100



request_configuration = FindMeetingTimesRequestBuilder.FindMeetingTimesRequestBuilderPostRequestConfiguration(
headers = {
'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)


result = await client.me.find_meeting_times.post(request_body = request_body, request_configuration = request_configuration)


```