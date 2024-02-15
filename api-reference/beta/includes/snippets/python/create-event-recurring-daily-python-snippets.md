---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.events_request_builder import EventsRequestBuilder
from msgraph.generated.models.event import Event
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.location import Location
from msgraph.generated.models.attendee import Attendee
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.recurrence_range import RecurrenceRange

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
				address = "AlexW@contoso.com",
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

request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```