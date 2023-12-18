---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	subject = "Let's go for lunch",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Does late morning work for you?",
	),
	start = DateTimeTimeZone(
		date_time = "2019-06-16T12:00:00",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2019-06-16T14:00:00",
		time_zone = "Pacific Standard Time",
	),
	location = Location(
		display_name = "Harry's Bar",
	),
	attendees = [
		Attendee(
			email_address = EmailAddress(
				address = "adelev@contoso.onmicrosoft.com",
				name = "Adele Vance",
			),
			type = AttendeeType.Required,
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').events.post(request_body)


```