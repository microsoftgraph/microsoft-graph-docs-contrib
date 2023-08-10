---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = StartHoldMusicPostRequestBody()
custom_prompt = MediaPrompt()
custom_prompt.@odata_type = '#microsoft.graph.mediaPrompt'

custom_promptmedia_info = MediaInfo()
custom_promptmedia_info.@odata_type = '#microsoft.graph.mediaInfo'

custom_promptmedia_info.uri = 'https://bot.contoso.com/onHold.wav'


custom_prompt.media_info = custom_promptmedia_info

request_body.custom_prompt = custom_prompt
request_body.client_context = 'd45324c1-fcb5-430a-902c-f20af696537c'




result = await client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').start_hold_music.post(request_body = request_body)


```