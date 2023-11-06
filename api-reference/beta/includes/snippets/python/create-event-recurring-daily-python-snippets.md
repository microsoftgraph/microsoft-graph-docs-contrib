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
		content = "Does noon work for you?",
	),
	start = DateTimeTimeZone(
		date_time = "2020-02-25T12:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2020-02-25T14:00:00",
		time_zone = "Pacific Standard Time",
	),
	location = Location(
		display_name = "Harry's Bar",
	),
	attendees = [
		Attendee(
			email_address = EmailAddress(
				address = "AlexW@contoso.OnMicrosoft.com",
				name = "Alex Wilbur",
			),
			type = AttendeeType.Required,
		),
	],
	recurrence = PatternedRecurrence(
		pattern = RecurrencePattern(
			type = RecurrencePatternType.Daily,
			interval = 1,
		),
		range = RecurrenceRange(
			type = RecurrenceRangeType.Numbered,
			start_date = "2020-02-25",
			number_of_occurrences = 2,
		),
	),
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)

result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```