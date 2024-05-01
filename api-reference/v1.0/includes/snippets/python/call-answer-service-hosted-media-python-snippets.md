---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.answer.answer_post_request_body import AnswerPostRequestBody
from msgraph.generated.models.modality import Modality
from msgraph.generated.models.service_hosted_media_config import ServiceHostedMediaConfig
from msgraph.generated.models.media_info import MediaInfo

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