---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody()
topic = TeamworkActivityTopic()
topic.source(TeamworkActivityTopicSource.EntityUrl('teamworkactivitytopicsource.entityurl'))

topic.value = 'https://graph.microsoft.com/v1.0/chats/{chatId}/messages/{messageId}'


request_body.topic = topic
request_body.activity_type = 'approvalRequired'

preview_text = ItemBody()
preview_text.content = 'Deployment requires your approval'


request_body.preview_text = preview_text
recipient = AadUserNotificationRecipient()
recipient.@odata_type = 'microsoft.graph.aadUserNotificationRecipient'

recipient.user_id = 'jacob@contoso.com'


request_body.recipient = recipient
template_parameters_key_value_pair1 = KeyValuePair()
template_parameters_key_value_pair1.name = 'approvalTaskId'

template_parameters_key_value_pair1.value = '2020AAGGTAPP'


templateParametersArray []= templateParametersKeyValuePair1;
request_body.templateparameters(templateParametersArray)





await client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body = request_body)


```