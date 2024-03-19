---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.events_request_builder import EventsRequestBuilder
from msgraph.generated.models.event import Event
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.attendee import Attendee
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.location import Location
from msgraph.generated.models.physical_address import PhysicalAddress
from msgraph.generated.models.outlook_geo_coordinates import OutlookGeoCoordinates

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	subject = "Plan summer company picnic",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Let's kick-start this event planning!",
	),
	start = DateTimeTimeZone(
		date_time = "2017-08-30T11:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2017-08-30T12:00:00",
		time_zone = "Pacific Standard Time",
	),
	attendees = [
		Attendee(
			email_address = EmailAddress(
				address = "DanaS@contoso.com",
				name = "Dana Swope",
			),
			type = AttendeeType.Required,
		),
		Attendee(
			email_address = EmailAddress(
				address = "AlexW@contoso.com",
				name = "Alex Wilber",
			),
			type = AttendeeType.Required,
		),
	],
	location = Location(
		display_name = "Conf Room 3; Fourth Coffee; Home Office",
		location_type = LocationType.Default,
	),
	locations = [
		Location(
			display_name = "Conf Room 3",
		),
		Location(
			display_name = "Fourth Coffee",
			address = PhysicalAddress(
				street = "4567 Main St",
				city = "Redmond",
				state = "WA",
				country_or_region = "US",
				postal_code = "32008",
			),
			coordinates = OutlookGeoCoordinates(
				latitude = 47.672,
				longitude = -102.103,
			),
		),
		Location(
			display_name = "Home Office",
		),
	],
	allow_new_time_proposals = True,
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```