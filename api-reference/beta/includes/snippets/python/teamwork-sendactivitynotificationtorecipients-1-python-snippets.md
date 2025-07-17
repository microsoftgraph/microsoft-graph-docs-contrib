---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teamwork.send_activity_notification_to_recipients.send_activity_notification_to_recipients_post_request_body import SendActivityNotificationToRecipientsPostRequestBody
from msgraph_beta.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph_beta.generated.models.teamwork_activity_topic_source import TeamworkActivityTopicSource
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.teamwork_notification_recipient import TeamworkNotificationRecipient
from msgraph_beta.generated.models.aad_user_notification_recipient import AadUserNotificationRecipient
from msgraph_beta.generated.models.key_value_pair import KeyValuePair
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SendActivityNotificationToRecipientsPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppId}",
	),
	activity_type = "pendingFinanceApprovalRequests",
	preview_text = ItemBody(
		content = "Internal spending team has a pending finance approval requests",
	),
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
	template_parameters = [
		KeyValuePair(
			name = "pendingRequestCount",
			value = "5",
		),
	],
)

await graph_client.teamwork.send_activity_notification_to_recipients.post(request_body)


```