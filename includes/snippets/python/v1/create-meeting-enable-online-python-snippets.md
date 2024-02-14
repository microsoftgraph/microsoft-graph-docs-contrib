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

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	subject = "Prep for customer meeting",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Does this time work for you?",
	),
	start = DateTimeTimeZone(
		date_time = "2019-11-20T13:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2019-11-20T14:00:00",
		time_zone = "Pacific Standard Time",
	),
	location = Location(
		display_name = "Cordova conference room",
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
	is_online_meeting = True,
	online_meeting_provider = OnlineMeetingProviderType.TeamsForBusiness,
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```