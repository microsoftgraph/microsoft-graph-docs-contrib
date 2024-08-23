---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.answer.answer_post_request_body import AnswerPostRequestBody
from msgraph.generated.models.app_hosted_media_config import AppHostedMediaConfig
from msgraph.generated.models.modality import Modality
from msgraph.generated.models.incoming_call_options import IncomingCallOptions

graph_client = GraphServiceClient(credentials, scopes)

request_body = AnswerPostRequestBody(
	callback_uri = "callbackUri-value",
	media_config = AppHostedMediaConfig(
		odata_type = "#microsoft.graph.appHostedMediaConfig",
		blob = "<Media Session Configuration Blob>",
	),
	accepted_modalities = [
		Modality.Audio,
	],
	call_options = IncomingCallOptions(
		odata_type = "#microsoft.graph.incomingCallOptions",
		is_content_sharing_notification_enabled = True,
	),
	participant_capacity = 200,
)

await graph_client.communications.calls.by_call_id('call-id').answer.post(request_body)


```