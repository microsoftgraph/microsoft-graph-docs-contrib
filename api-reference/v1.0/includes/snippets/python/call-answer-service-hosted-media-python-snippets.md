---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AnswerPostRequestBody(
	callback_uri = "https://bot.contoso.com/api/calls",
	accepted_modalities = [
		Modality.Audio,
	],
	media_config = ServiceHostedMediaConfig(
		odata_type = "#microsoft.graph.serviceHostedMediaConfig",
		pre_fetch_media = [
			MediaInfo(
				uri = "https://cdn.contoso.com/beep.wav",
				resource_id = "1D6DE2D4-CD51-4309-8DAA-70768651088E",
			),
			MediaInfo(
				uri = "https://cdn.contoso.com/cool.wav",
				resource_id = "1D6DE2D4-CD51-4309-8DAA-70768651088F",
			),
		],
	),
)

await graph_client.communications.calls.by_call_id('call-id').answer.post(request_body)


```