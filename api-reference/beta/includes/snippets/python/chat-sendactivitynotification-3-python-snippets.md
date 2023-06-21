---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody()
topic = TeamworkActivityTopic()
topic.source(TeamworkActivityTopicSource.Text('teamworkactivitytopicsource.text'))

topic.value = 'Deployment Approvals Channel'

topic.web_url = 'https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000'


request_body.topic = topic
request_body.activity_type = 'deploymentApprovalRequired'

preview_text = ItemBody()
preview_text.content = 'New deployment requires your approval'


request_body.preview_text = preview_text
recipient = AadUserNotificationRecipient()
recipient.@odata_type = 'microsoft.graph.aadUserNotificationRecipient'

recipient.user_id = '569363e2-4e49-4661-87f2-16f245c5d66a'


request_body.recipient = recipient
template_parameters_key_value_pair1 = KeyValuePair()
template_parameters_key_value_pair1.name = 'deploymentId'

template_parameters_key_value_pair1.value = '6788662'


templateParametersArray []= templateParametersKeyValuePair1;
request_body.templateparameters(templateParametersArray)





await client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body = request_body)


```