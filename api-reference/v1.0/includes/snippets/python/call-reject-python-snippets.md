---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.reject.reject_post_request_body import RejectPostRequestBody
from msgraph.generated.models.reject_reason import RejectReason
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RejectPostRequestBody(
	reason = RejectReason.Busy,
)

await graph_client.communications.calls.by_call_id('call-id').reject.post(request_body)


```