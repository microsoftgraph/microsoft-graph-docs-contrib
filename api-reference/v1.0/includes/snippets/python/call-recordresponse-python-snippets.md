---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.record_response_post_request_body import RecordResponsePostRequestBody
from msgraph.generated.models.prompt import Prompt
from msgraph.generated.models.media_prompt import MediaPrompt
from msgraph.generated.models.media_info import MediaInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = RecordResponsePostRequestBody(
	barge_in_allowed = True,
	client_context = "d45324c1-fcb5-430a-902c-f20af696537c",
	prompts = [
		MediaPrompt(
			odata_type = "#microsoft.graph.mediaPrompt",
			media_info = MediaInfo(
				uri = "https://cdn.contoso.com/beep.wav",
				resource_id = "1D6DE2D4-CD51-4309-8DAA-70768651088E",
			),
		),
	],
	max_record_duration_in_seconds = 10,
	initial_silence_timeout_in_seconds = 5,
	max_silence_timeout_in_seconds = 2,
	play_beep = True,
	stop_tones = [
		"#",
		"1",
		"*",
	],
)

result = await graph_client.communications.calls.by_call_id('call-id').record_response.post(request_body)


```