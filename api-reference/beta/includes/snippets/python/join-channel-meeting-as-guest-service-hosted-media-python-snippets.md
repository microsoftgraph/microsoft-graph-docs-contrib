---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Call()
request_body.@odata_type = '#microsoft.graph.call'

request_body.callback_uri = 'https://bot.contoso.com/callback'

source = ParticipantInfo()
source.@odata_type = '#microsoft.graph.participantInfo'

sourceidentity = IdentitySet()
sourceidentity.@odata_type = '#microsoft.graph.identitySet'

additional_data = [
'guest' => sourceidentity = Guest()
		sourceidentity.@odata_type = '#microsoft.graph.identity'

		sourceidentity.display_name = 'Guest User'

		sourceidentity.id = 'd7a3b999-17ac-4bca-9e77-e6a730d2ec2e'


sourceidentity.guest = guest

];
sourceidentity.additional_data(additional_data)



source.identity = sourceidentity

request_body.source = source
request_body.RequestedModalities([request_body.modality(Modality.Audio('modality.audio'))
])

media_config = ServiceHostedMediaConfig()
media_config.@odata_type = '#microsoft.graph.serviceHostedMediaConfig'

pre_fetch_media_media_info1 = MediaInfo()
pre_fetch_media_media_info1.uri = 'https://cdn.contoso.com/beep.wav'

pre_fetch_media_media_info1.resource_id = 'f8971b04-b53e-418c-9222-c82ce681a582'


preFetchMediaArray []= preFetchMediaMediaInfo1;
pre_fetch_media_media_info2 = MediaInfo()
pre_fetch_media_media_info2.uri = 'https://cdn.contoso.com/cool.wav'

pre_fetch_media_media_info2.resource_id = '86dc814b-c172-4428-9112-60f8ecae1edb'


preFetchMediaArray []= preFetchMediaMediaInfo2;
media_config.prefetchmedia(preFetchMediaArray)



request_body.media_config = media_config
chat_info = ChatInfo()
chat_info.@odata_type = '#microsoft.graph.chatInfo'

chat_info.thread_id = '19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype'

chat_info.message_id = '1533758867081'


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
meeting_info.allow_conversation_without_host = True


request_body.meeting_info = meeting_info



result = await client.communications.calls.post(request_body = request_body)


```