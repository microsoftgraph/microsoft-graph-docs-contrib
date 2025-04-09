---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.events.events_request_builder import EventsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.event import Event
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph_beta.generated.models.attendee import Attendee
from msgraph_beta.generated.models.email_address import EmailAddress
from msgraph_beta.generated.models.attendee_type import AttendeeType
from msgraph_beta.generated.models.location import Location
from msgraph_beta.generated.models.location_type import LocationType
from msgraph_beta.generated.models.physical_address import PhysicalAddress
from msgraph_beta.generated.models.outlook_geo_coordinates import OutlookGeoCoordinates
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```