---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = MutePostRequestBody(
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').mute.post(body = request_body)


```