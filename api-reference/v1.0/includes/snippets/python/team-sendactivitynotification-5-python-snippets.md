---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody()
topic = TeamworkActivityTopic()
topic.source(TeamworkActivityTopicSource.EntityUrl('teamworkactivitytopicsource.entityurl'))

topic.value = 'https://graph.microsoft.com/v1.0/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7'


request_body.topic = topic
request_body.activity_type = 'pendingFinanceApprovalRequests'

preview_text = ItemBody()
preview_text.content = 'Internal spending team has a pending finance approval requests'


request_body.preview_text = preview_text
recipient = TeamMembersNotificationRecipient()
recipient.@odata_type = 'microsoft.graph.teamMembersNotificationRecipient'

recipient.team_id = 'e8bece96-d393-4b9b-b8da-69cedef1a7e7'


request_body.recipient = recipient
template_parameters_key_value_pair1 = KeyValuePair()
template_parameters_key_value_pair1.name = 'pendingRequestCount'

template_parameters_key_value_pair1.value = '5'


templateParametersArray []= templateParametersKeyValuePair1;
request_body.templateparameters(templateParametersArray)





await client.teams.by_team_id('team-id').send_activity_notification.post(request_body = request_body)


```