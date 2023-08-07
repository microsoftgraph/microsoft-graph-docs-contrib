---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AnswerPostRequestBody()
request_body.callback_uri = 'callbackUri-value'

media_config = AppHostedMediaConfig()
media_config.@odata_type = '#microsoft.graph.appHostedMediaConfig'

media_config.blob = '<Media Session Configuration Blob>'


request_body.media_config = media_config
request_body.AcceptedModalities([request_body.modality(Modality.Audio('modality.audio'))
])

call_options = IncomingCallOptions()
call_options.@odata_type = '#microsoft.graph.incomingCallOptions'

call_options.is_content_sharing_notification_enabled = True


request_body.call_options = call_options
request_body.ParticipantCapacity = 200




await client.communications.calls.by_call_id('call-id').answer.post(request_body = request_body)


```