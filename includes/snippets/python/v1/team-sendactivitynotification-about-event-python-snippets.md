---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.Text,
		value = "Weekly Virtual Social",
		web_url = "Teams webUrl",
	),
	preview_text = ItemBody(
		content = "It will be fun!",
	),
	activity_type = "eventCreated",
	recipient = TeamMembersNotificationRecipient(
		odata_type = "microsoft.graph.teamMembersNotificationRecipient",
		team_id = "7155e3c8-175e-4311-97ef-572edc3aa3db",
	),
)

await graph_client.teams.by_team_id('team-id').send_activity_notification.post(body = request_body)


```