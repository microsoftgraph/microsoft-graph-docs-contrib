---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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