---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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
				address = "DanaS@contoso.onmicrosoft.com",
				name = "Dana Swope",
			),
			type = AttendeeType.Required,
		),
		Attendee(
			email_address = EmailAddress(
				address = "AlexW@contoso.onmicrosoft.com",
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

request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)

result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```