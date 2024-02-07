---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = MuteAllPostRequestBody(
	participants = [
		"",
	],
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.mute_all.post(request_body)


```