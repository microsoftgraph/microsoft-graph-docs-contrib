---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.event import Event
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.attendee import Attendee
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.multi_value_legacy_extended_property import MultiValueLegacyExtendedProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	subject = "Family reunion",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Let's get together this Thanksgiving!",
	),
	start = DateTimeTimeZone(
		date_time = "2015-11-26T09:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2015-11-29T21:00:00",
		time_zone = "Pacific Standard Time",
	),
	attendees = [
		Attendee(
			email_address = EmailAddress(
				address = "Terrie@contoso.com",
				name = "Terrie Barrera",
			),
			type = AttendeeType.Required,
		),
		Attendee(
			email_address = EmailAddress(
				address = "Lauren@contoso.com",
				name = "Lauren Solis",
			),
			type = AttendeeType.Required,
		),
	],
	multi_value_extended_properties = [
		MultiValueLegacyExtendedProperty(
			id = "StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation",
			value = [
				"Food",
				"Hiking",
				"Swimming",
			],
		),
	],
)

result = await graph_client.me.events.post(request_body)


```