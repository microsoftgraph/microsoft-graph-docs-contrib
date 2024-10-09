---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.event import Event
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.attendee import Attendee
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.attendee_type import AttendeeType
from msgraph.generated.models.single_value_legacy_extended_property import SingleValueLegacyExtendedProperty
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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