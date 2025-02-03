---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.play_prompt.play_prompt_post_request_body import PlayPromptPostRequestBody
from msgraph_beta.generated.models.prompt import Prompt
from msgraph_beta.generated.models.media_prompt import MediaPrompt
from msgraph_beta.generated.models.media_info import MediaInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlayPromptPostRequestBody(
	client_context = "d45324c1-fcb5-430a-902c-f20af696537c",
	prompts = [
		MediaPrompt(
			odata_type = "#microsoft.graph.mediaPrompt",
			media_info = MediaInfo(
				odata_type = "#microsoft.graph.mediaInfo",
				uri = "https://cdn.contoso.com/beep.wav",
				resource_id = "1D6DE2D4-CD51-4309-8DAA-70768651088E",
			),
		),
	],
	loop = False,
)

result = await graph_client.communications.calls.by_call_id('call-id').play_prompt.post(request_body)


```