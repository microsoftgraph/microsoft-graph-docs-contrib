---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.subscribe_to_tone.subscribe_to_tone_post_request_body import SubscribeToTonePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SubscribeToTonePostRequestBody(
	client_context = "fd1c7836-4d84-4e24-b6aa-23188688cc54",
)

result = await graph_client.communications.calls.by_call_id('call-id').subscribe_to_tone.post(request_body)


```