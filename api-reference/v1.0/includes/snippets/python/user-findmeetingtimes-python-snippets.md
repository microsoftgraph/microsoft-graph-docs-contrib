---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = FindMeetingTimesPostRequestBody(
	attendees = [
		AttendeeBase(
			type = AttendeeType.Required,
			email_address = EmailAddress(
				name = "Alex Wilbur",
				address = "alexw@contoso.onmicrosoft.com",
			),
		),
	],
	location_constraint = LocationConstraint(
		is_required = False,
		suggest_location = False,
		locations = [
			LocationConstraintItem(
				resolve_availability = False,
				display_name = "Conf room Hood",
			),
		],
	),
	time_constraint = TimeConstraint(
		activity_domain = ActivityDomain.Work,
		time_slots = [
			TimeSlot(
				start = DateTimeTimeZone(
					date_time = "2019-04-16T09:00:00",
					time_zone = "Pacific Standard Time",
				),
				end = DateTimeTimeZone(
					date_time = "2019-04-18T17:00:00",
					time_zone = "Pacific Standard Time",
				),
			),
		],
	),
	is_organizer_optional = False,
	meeting_duration = "PT1H",
	return_suggestion_reasons = True,
	minimum_attendee_percentage = 100,
)

request_configuration = FindMeetingTimesRequestBuilder.FindMeetingTimesRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)

result = await graph_client.me.find_meeting_times.post(request_body, request_configuration = request_configuration)


```