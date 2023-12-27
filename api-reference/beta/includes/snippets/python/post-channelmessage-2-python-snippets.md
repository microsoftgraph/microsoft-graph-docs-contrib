---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	created_date_time = "2019-02-04T19:58:15.511Z",
	from = ChatMessageFromIdentitySet(
		user = Identity(
			id = "id-value",
			display_name = "Joh Doe",
			additional_data = {
					"user_identity_type" : "aadUser",
			}
		),
	),
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Hello World",
	),
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```