---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/v1.0/teams/{teamId}",
	),
	activity_type = "systemDefault",
	preview_text = ItemBody(
		content = "Take a break",
	),
	recipient = AadUserNotificationRecipient(
		odata_type = "microsoft.graph.aadUserNotificationRecipient",
		user_id = "569363e2-4e49-4661-87f2-16f245c5d66a",
	),
	template_parameters = [
		KeyValuePair(
			name = "systemDefaultText",
			value = "You need to take a short break",
		),
	],
)

await graph_client.teams.by_team_id('team-id').send_activity_notification.post(request_body)


```