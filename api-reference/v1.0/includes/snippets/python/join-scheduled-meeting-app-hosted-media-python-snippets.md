---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Call()
request_body.@odata_type = '#microsoft.graph.call'

request_body.direction(CallDirection.Outgoing('calldirection.outgoing'))

request_body.callback_uri = 'https://bot.contoso.com/callback'

request_body.RequestedModalities([request_body.modality(Modality.Audio('modality.audio'))
])

media_config = AppHostedMediaConfig()
media_config.@odata_type = '#microsoft.graph.appHostedMediaConfig'


request_body.media_config = media_config
chat_info = ChatInfo()
chat_info.@odata_type = '#microsoft.graph.chatInfo'

chat_info.thread_id = '19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2'

chat_info.message_id = '0'


request_body.chat_info = chat_info
meeting_info = OrganizerMeetingInfo()
meeting_info.@odata_type = '#microsoft.graph.organizerMeetingInfo'

meeting_infoorganizer = IdentitySet()
meeting_infoorganizer.@odata_type = '#microsoft.graph.identitySet'

meeting_infoorganizeruser = Identity()
meeting_infoorganizeruser.@odata_type = '#microsoft.graph.identity'

meeting_infoorganizeruser.id = '5810cede-f3cc-42eb-b2c1-e9bd5d53ec96'

meeting_infoorganizeruser.display_name = 'Bob'

additional_data = [
'tenant_id' => 'aa67bd4c-8475-432d-bd41-39f255720e0a', 
];
meeting_infoorganizeruser.additional_data(additional_data)



meeting_infoorganizer.user = meeting_infoorganizeruser

meeting_info.organizer = meeting_infoorganizer
additional_data = [
'allow_conversation_without_host' => true,
];
meeting_info.additional_data(additional_data)



request_body.meeting_info = meeting_info
request_body.tenant_id = 'aa67bd4c-8475-432d-bd41-39f255720e0a'




result = await client.communications.calls.post(request_body = request_body)


```