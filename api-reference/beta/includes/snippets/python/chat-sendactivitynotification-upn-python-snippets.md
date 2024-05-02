---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.send_activity_notification.send_activity_notification_post_request_body import SendActivityNotificationPostRequestBody
from msgraph.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.aad_user_notification_recipient import AadUserNotificationRecipient
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/beta/chats/{chatId}/messages/{messageId}",
	),
	activity_type = "approvalRequired",
	preview_text = ItemBody(
		content = "Deployment requires your approval",
	),
	recipient = AadUserNotificationRecipient(
		odata_type = "microsoft.graph.aadUserNotificationRecipient",
		user_id = "jacob@contoso.com",
	),
	template_parameters = [
		KeyValuePair(
			name = "approvalTaskId",
			value = "2020AAGGTAPP",
		),
	],
)

await graph_client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body)


```