---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody()
topic = TeamworkActivityTopic()
topic.source(TeamworkActivityTopicSource.EntityUrl('teamworkactivitytopicsource.entityurl'))

topic.value = 'https://graph.microsoft.com/beta/teams/{teamId}'


request_body.topic = topic
request_body.activity_type = 'pendingFinanceApprovalRequests'

preview_text = ItemBody()
preview_text.content = 'Internal spending team has a pending finance approval requests'


request_body.preview_text = preview_text
recipient = AadUserNotificationRecipient()
recipient.@odata_type = 'microsoft.graph.aadUserNotificationRecipient'

recipient.user_id = '569363e2-4e49-4661-87f2-16f245c5d66a'


request_body.recipient = recipient
template_parameters_key_value_pair1 = KeyValuePair()
template_parameters_key_value_pair1.name = 'pendingRequestCount'

template_parameters_key_value_pair1.value = '5'


templateParametersArray []= templateParametersKeyValuePair1;
request_body.templateparameters(templateParametersArray)





await client.teams.by_team_id('team-id').send_activity_notification.post(request_body = request_body)


```