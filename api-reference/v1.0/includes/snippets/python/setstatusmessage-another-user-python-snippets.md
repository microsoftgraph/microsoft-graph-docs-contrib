---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetStatusMessagePostRequestBody(
	status_message = PresenceStatusMessage(
		message = ItemBody(
			content = "Hey I am available now",
			content_type = BodyType.Text,
		),
	),
)

await graph_client.users.by_user_id('user-id').presence.set_status_message.post(request_body)


```