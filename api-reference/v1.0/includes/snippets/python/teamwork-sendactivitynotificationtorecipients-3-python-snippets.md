---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teamwork.send_activity_notification_to_recipients.send_activity_notification_to_recipients_post_request_body import SendActivityNotificationToRecipientsPostRequestBody
from msgraph.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph.generated.models.teamwork_activity_topic_source import TeamworkActivityTopicSource
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.key_value_pair import KeyValuePair
from msgraph.generated.models.teamwork_notification_recipient import TeamworkNotificationRecipient
from msgraph.generated.models.aad_user_notification_recipient import AadUserNotificationRecipient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SendActivityNotificationToRecipientsPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.Text,
		value = "Deployment Approvals Channel",
		web_url = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000",
	),
	activity_type = "announcementPosted",
	preview_text = ItemBody(
		content = "new announcemnet posted",
	),
	icon_id = "announcementCreated",
	template_parameters = [
		KeyValuePair(
			name = "deploymentId",
			value = "6788662",
		),
	],
	recipients = [
		AadUserNotificationRecipient(
			odata_type = "microsoft.graph.aadUserNotificationRecipient",
			user_id = "569363e2-4e49-4661-87f2-16f245c5d66a",
		),
		AadUserNotificationRecipient(
			odata_type = "microsoft.graph.aadUserNotificationRecipient",
			user_id = "ab88234e-0874-477c-9638-d144296ed04f",
		),
		AadUserNotificationRecipient(
			odata_type = "microsoft.graph.aadUserNotificationRecipient",
			user_id = "01c64f53-69aa-42c7-9b7f-9f75195d6bfc",
		),
	],
)

await graph_client.teamwork.send_activity_notification_to_recipients.post(request_body)


```