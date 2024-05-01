---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.send_activity_notification.send_activity_notification_post_request_body import SendActivityNotificationPostRequestBody
from msgraph.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.aad_user_notification_recipient import AadUserNotificationRecipient
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/tabs/{tabId}",
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