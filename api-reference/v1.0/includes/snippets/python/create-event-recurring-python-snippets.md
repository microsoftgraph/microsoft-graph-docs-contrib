---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	subject = "Let's go for lunch",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Does noon time work for you?",
	),
	start = DateTimeTimeZone(
		date_time = "2017-09-04T12:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2017-09-04T14:00:00",
		time_zone = "Pacific Standard Time",
	),
	recurrence = PatternedRecurrence(
		pattern = RecurrencePattern(
			type = RecurrencePatternType.Weekly,
			interval = 1,
			days_of_week = [
				DayOfWeek.Monday,
			],
		),
		range = RecurrenceRange(
			type = RecurrenceRangeType.EndDate,
			start_date = "2017-09-04",
			end_date = "2017-12-31",
		),
	),
	location = Location(
		display_name = "Harry's Bar",
	),
	attendees = [
		Attendee(
			email_address = EmailAddress(
				address = "AdeleV@contoso.onmicrosoft.com",
				name = "Adele Vance",
			),
			type = AttendeeType.Required,
		),
	],
	allow_new_time_proposals = True,
)

result = await graph_client.me.events.post(request_body)


```