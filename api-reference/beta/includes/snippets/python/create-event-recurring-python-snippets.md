---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.event import Event
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph_beta.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph_beta.generated.models.recurrence_pattern import RecurrencePattern
from msgraph_beta.generated.models.recurrence_pattern_type import RecurrencePatternType
from msgraph_beta.generated.models.day_of_week import DayOfWeek
from msgraph_beta.generated.models.recurrence_range import RecurrenceRange
from msgraph_beta.generated.models.recurrence_range_type import RecurrenceRangeType
from msgraph_beta.generated.models.location import Location
from msgraph_beta.generated.models.attendee import Attendee
from msgraph_beta.generated.models.email_address import EmailAddress
from msgraph_beta.generated.models.attendee_type import AttendeeType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
)

result = await graph_client.me.events.post(request_body)


```