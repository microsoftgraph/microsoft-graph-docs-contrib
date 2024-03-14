---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cancel_media_processing_post_request_body import CancelMediaProcessingPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CancelMediaProcessingPostRequestBody(
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').cancel_media_processing.post(request_body)


```