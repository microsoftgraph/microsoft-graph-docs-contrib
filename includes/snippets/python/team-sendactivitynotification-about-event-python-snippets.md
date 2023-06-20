---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody()
topic = TeamworkActivityTopic()
topic.source(TeamworkActivityTopicSource.Text('teamworkactivitytopicsource.text'))

topic.value = 'Weekly Virtual Social'

topic.web_url = 'Teams webUrl'


request_body.topic = topic
preview_text = ItemBody()
preview_text.content = 'It will be fun!'


request_body.preview_text = preview_text
request_body.activity_type = 'eventCreated'

recipient = TeamworkNotificationRecipient()
recipient.@odata_type = 'microsoft.graph.teamMembersNotificationRecipient'

additional_data = [
'team_id' => '7155e3c8-175e-4311-97ef-572edc3aa3db', 
];
recipient.additional_data(additional_data)



request_body.recipient = recipient



await client.teams.by_team_id('team-id').send_activity_notification.post(request_body = request_body)


```