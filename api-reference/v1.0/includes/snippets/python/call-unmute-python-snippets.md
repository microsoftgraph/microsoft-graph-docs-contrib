---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = UnmutePostRequestBody(
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').unmute.post(request_body)


```