---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.send_activity_notification_post_request_body import SendActivityNotificationPostRequestBody
from msgraph.generated.models.teamwork_activity_topic import TeamworkActivityTopic
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.team_members_notification_recipient import TeamMembersNotificationRecipient

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.Text,
		value = "Weekly Virtual Social",
		web_url = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000",
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

await graph_client.teams.by_team_id('team-id').send_activity_notification.post(request_body)


```