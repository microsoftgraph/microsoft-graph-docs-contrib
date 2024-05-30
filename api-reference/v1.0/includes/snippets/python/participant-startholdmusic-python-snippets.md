---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.participants.item.start_hold_music.start_hold_music_post_request_body import StartHoldMusicPostRequestBody
from msgraph.generated.models.media_prompt import MediaPrompt
from msgraph.generated.models.media_info import MediaInfo

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