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
from msgraph_beta.generated.models.location import Location
from msgraph_beta.generated.models.attendee import Attendee
from msgraph_beta.generated.models.email_address import EmailAddress
from msgraph_beta.generated.models.attendee_type import AttendeeType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Event(
	subject = "Let's go for lunch",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Does next month work for you?",
	),
	start = DateTimeTimeZone(
		date_time = "2019-03-10T12:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2019-03-10T14:00:00",
		time_zone = "Pacific Standard Time",
	),
	location = Location(
		display_name = "Harry's Bar",
	),
	attendees = [
		Attendee(
			email_address = EmailAddress(
				address = "adelev@contoso.com",
				name = "Adele Vance",
			),
			type = AttendeeType.Required,
		),
	],
	transaction_id = "7E163156-7762-4BEB-A1C6-729EA81755A7",
)

result = await graph_client.me.calendars.by_calendar_id('calendar-id').events.post(request_body)


```