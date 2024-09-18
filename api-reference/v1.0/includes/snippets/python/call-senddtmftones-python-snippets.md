---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.send_dtmf_tones.send_dtmf_tones_post_request_body import SendDtmfTonesPostRequestBody
from msgraph.generated.models.tone import Tone

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendDtmfTonesPostRequestBody(
	tones = [
		Tone.Tone1,
		Tone.Tone2,
		Tone.Tone3,
		Tone.Tone4,
		Tone.Tone5,
		Tone.Tone6,
		Tone.Tone7,
		Tone.Tone8,
		Tone.Tone9,
		Tone.Tone0,
		Tone.Star,
		Tone.Pound,
	],
	delay_between_tones_ms = 1000,
	client_context = "e0be71f1-a14f-4cec-b65a-e7aba5db7c53",
)

result = await graph_client.communications.calls.by_call_id('call-id').send_dtmf_tones.post(request_body)


```