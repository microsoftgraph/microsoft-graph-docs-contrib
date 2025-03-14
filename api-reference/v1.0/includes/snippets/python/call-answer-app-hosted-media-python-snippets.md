---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.answer.answer_post_request_body import AnswerPostRequestBody
from msgraph.generated.models.modality import Modality
from msgraph.generated.models.app_hosted_media_config import AppHostedMediaConfig
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AnswerPostRequestBody(
	callback_uri = "https://bot.contoso.com/api/calls",
	accepted_modalities = [
		Modality.Audio,
	],
	media_config = AppHostedMediaConfig(
		odata_type = "#microsoft.graph.appHostedMediaConfig",
		blob = "<Media Session Configuration Blob>",
	),
)

await graph_client.communications.calls.by_call_id('call-id').answer.post(request_body)


```