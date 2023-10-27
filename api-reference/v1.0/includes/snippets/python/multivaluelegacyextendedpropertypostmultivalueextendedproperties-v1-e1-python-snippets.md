---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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