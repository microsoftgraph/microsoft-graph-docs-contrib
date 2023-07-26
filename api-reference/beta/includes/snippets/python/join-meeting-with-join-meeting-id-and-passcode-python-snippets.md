---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Call()
request_body.@odata_type = '#microsoft.graph.call'

request_body.callback_uri = 'https://bot.contoso.com/callback'

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
meeting_info = JoinMeetingIdMeetingInfo()
meeting_info.@odata_type = '#microsoft.graph.joinMeetingIdMeetingInfo'

meeting_info.join_meeting_id = '1234567'

meeting_info.passcode = 'psw123'


request_body.meeting_info = meeting_info
request_body.tenant_id = '86dc81db-c112-4228-9222-63f3esaa1edb'




result = await client.communications.calls.post(request_body = request_body)


```