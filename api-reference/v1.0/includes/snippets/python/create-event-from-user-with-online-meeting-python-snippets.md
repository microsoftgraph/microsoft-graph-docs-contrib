---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.events_request_builder import EventsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.event import Event
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.location import Location
from msgraph.generated.models.attendee import Attendee
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.attendee_type import AttendeeType
from msgraph.generated.models.online_meeting_provider_type import OnlineMeetingProviderType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Event(
	subject = "Let's go for lunch",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Does noon work for you?",
	),
	start = DateTimeTimeZone(
		date_time = "2017-04-15T12:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2017-04-15T14:00:00",
		time_zone = "Pacific Standard Time",
	),
	location = Location(
		display_name = "Harry's Bar",
	),
	attendees = [
		Attendee(
			email_address = EmailAddress(
				address = "samanthab@contoso.com",
				name = "Samantha Booth",
			),
			type = AttendeeType.Required,
		),
	],
	allow_new_time_proposals = True,
	is_online_meeting = True,
	online_meeting_provider = OnlineMeetingProviderType.TeamsForBusiness,
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```