---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CancelMediaProcessingPostRequestBody(
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').cancel_media_processing.post(request_body)


```