---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = StartHoldMusicPostRequestBody(
	custom_prompt = MediaPrompt(
		odata_type = "#microsoft.graph.mediaPrompt",
		media_info = MediaInfo(
			odata_type = "#microsoft.graph.mediaInfo",
			uri = "https://bot.contoso.com/onHold.wav",
		),
	),
	client_context = "d45324c1-fcb5-430a-902c-f20af696537c",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').start_hold_music.post(request_body)


```