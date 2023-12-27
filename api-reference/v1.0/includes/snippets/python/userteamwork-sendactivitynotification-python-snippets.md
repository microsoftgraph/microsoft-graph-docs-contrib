---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/v1.0/users/{userId}/teamwork/installedApps/{installationId}",
	),
	activity_type = "taskCreated",
	preview_text = ItemBody(
		content = "New Task Created",
	),
	template_parameters = [
		KeyValuePair(
			name = "taskId",
			value = "Task 12322",
		),
	],
)

await graph_client.users.by_user_id('user-id').teamwork.send_activity_notification.post(request_body)


```