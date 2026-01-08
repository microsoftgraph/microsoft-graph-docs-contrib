---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.chats.item.send_activity_notification.send_activity_notification_post_request_body import SendActivityNotificationPostRequestBody
from msgraph.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph.generated.models.teamwork_activity_topic_source import TeamworkActivityTopicSource
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.chat_members_notification_recipient import ChatMembersNotificationRecipient
from msgraph.generated.models.key_value_pair import KeyValuePair
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/v1.0/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2",
	),
	activity_type = "taskCreated",
	preview_text = ItemBody(
		content = "new task created",
	),
	icon_id = "taskCreatedIcon",
	recipient = ChatMembersNotificationRecipient(
		odata_type = "microsoft.graph.chatMembersNotificationRecipient",
		chat_id = "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2",
	),
	template_parameters = [
		KeyValuePair(
			name = "taskId",
			value = "Task 12322",
		),
	],
)

await graph_client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body)


```