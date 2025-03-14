---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.mute.mute_post_request_body import MutePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MutePostRequestBody(
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').mute.post(request_body)


```