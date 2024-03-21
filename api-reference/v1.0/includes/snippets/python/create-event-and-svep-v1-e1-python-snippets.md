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
from msgraph.generated.models.single_value_legacy_extended_property import SingleValueLegacyExtendedProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	subject = "Celebrate Thanksgiving",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Let's get together!",
	),
	start = DateTimeTimeZone(
		date_time = "2015-11-26T18:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2015-11-26T23:00:00",
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
	],
	single_value_extended_properties = [
		SingleValueLegacyExtendedProperty(
			id = "String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun",
			value = "Food",
		),
	],
)

result = await graph_client.me.events.post(request_body)


```