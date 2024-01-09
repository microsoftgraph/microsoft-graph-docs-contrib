---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetStatusMessagePostRequestBody(
	status_message = PresenceStatusMessage(
		message = ItemBody(
			content = "Hey I'm currently in a meeting.",
			content_type = BodyType.Text,
		),
		expiry_date_time = DateTimeTimeZone(
			date_time = "2022-10-18T17:05:33.2079781",
			time_zone = "Pacific Standard Time",
		),
	),
)

await graph_client.users.by_user_id('user-id').presence.set_status_message.post(request_body)


```