---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.answer.answer_post_request_body import AnswerPostRequestBody
from msgraph.generated.models.app_hosted_media_config import AppHostedMediaConfig
from msgraph.generated.models.modality import Modality
from msgraph.generated.models.incoming_call_options import IncomingCallOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
		is_delta_roster_enabled = True,
		is_interactive_roster_enabled = True,
	),
	participant_capacity = 200,
)

await graph_client.communications.calls.by_call_id('call-id').answer.post(request_body)


```