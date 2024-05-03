---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.teamwork.send_activity_notification.send_activity_notification_post_request_body import SendActivityNotificationPostRequestBody
from msgraph.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.key_value_pair import KeyValuePair

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