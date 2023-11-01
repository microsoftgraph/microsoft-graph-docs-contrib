---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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
				address = "AdeleV@contoso.OnMicrosoft.com",
				name = "Adele Vance",
			),
			type = AttendeeType.Required,
		),
	],
	allow_new_time_proposals = True,
	is_online_meeting = True,
	online_meeting_provider = OnlineMeetingProviderType.TeamsForBusiness,
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)

result = await graph_client.me.events.post(request_body, request_configuration = request_configuration)


```