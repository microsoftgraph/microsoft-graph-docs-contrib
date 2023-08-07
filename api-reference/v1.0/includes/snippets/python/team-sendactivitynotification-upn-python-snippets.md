---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody()
topic = TeamworkActivityTopic()
topic.source(TeamworkActivityTopicSource.EntityUrl('teamworkactivitytopicsource.entityurl'))

topic.value = 'https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/tabs/{tabId}'


request_body.topic = topic
request_body.activity_type = 'reservationUpdated'

preview_text = ItemBody()
preview_text.content = 'You have moved up the queue'


request_body.preview_text = preview_text
recipient = AadUserNotificationRecipient()
recipient.@odata_type = 'microsoft.graph.aadUserNotificationRecipient'

recipient.user_id = 'jacob@contoso.com'


request_body.recipient = recipient
template_parameters_key_value_pair1 = KeyValuePair()
template_parameters_key_value_pair1.name = 'reservationId'

template_parameters_key_value_pair1.value = 'TREEE433'


templateParametersArray []= templateParametersKeyValuePair1;
template_parameters_key_value_pair2 = KeyValuePair()
template_parameters_key_value_pair2.name = 'currentSlot'

template_parameters_key_value_pair2.value = '23'


templateParametersArray []= templateParametersKeyValuePair2;
request_body.templateparameters(templateParametersArray)





await client.teams.by_team_id('team-id').send_activity_notification.post(request_body = request_body)


```