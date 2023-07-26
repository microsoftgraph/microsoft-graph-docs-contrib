---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = StopHoldMusicPostRequestBody()
request_body.client_context = 'd45324c1-fcb5-430a-902c-f20af696537c'




result = await client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').stop_hold_music.post(request_body = request_body)


```