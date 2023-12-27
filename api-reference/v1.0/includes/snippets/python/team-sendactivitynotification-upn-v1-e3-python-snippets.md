---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/tabs/{tabId}",
	),
	activity_type = "reservationUpdated",
	preview_text = ItemBody(
		content = "You have moved up the queue",
	),
	recipient = AadUserNotificationRecipient(
		odata_type = "microsoft.graph.aadUserNotificationRecipient",
		user_id = "jacob@contoso.com",
	),
	template_parameters = [
		KeyValuePair(
			name = "reservationId",
			value = "TREEE433",
		),
		KeyValuePair(
			name = "currentSlot",
			value = "23",
		),
	],
)

await graph_client.teams.by_team_id('team-id').send_activity_notification.post(request_body)


```