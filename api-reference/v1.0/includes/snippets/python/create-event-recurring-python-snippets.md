---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.event import Event
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.day_of_week import DayOfWeek
from msgraph.generated.models.recurrence_range import RecurrenceRange
from msgraph.generated.models.location import Location
from msgraph.generated.models.attendee import Attendee
from msgraph.generated.models.email_address import EmailAddress

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
				address = "AdeleV@contoso.com",
				name = "Adele Vance",
			),
			type = AttendeeType.Required,
		),
	],
	allow_new_time_proposals = True,
)

result = await graph_client.me.events.post(request_body)


```