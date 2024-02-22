---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.send_activity_notification_post_request_body import SendActivityNotificationPostRequestBody
from msgraph.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.team_members_notification_recipient import TeamMembersNotificationRecipient
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/beta/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7",
	),
	activity_type = "pendingFinanceApprovalRequests",
	preview_text = ItemBody(
		content = "Internal spending team has a pending finance approval requests",
	),
	recipient = TeamMembersNotificationRecipient(
		odata_type = "microsoft.graph.teamMembersNotificationRecipient",
		team_id = "e8bece96-d393-4b9b-b8da-69cedef1a7e7",
	),
	template_parameters = [
		KeyValuePair(
			name = "pendingRequestCount",
			value = "5",
		),
	],
)

await graph_client.teams.by_team_id('team-id').send_activity_notification.post(request_body)


```