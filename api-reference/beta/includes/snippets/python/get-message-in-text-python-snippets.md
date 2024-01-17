---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = MessageItemRequestBuilder.MessageItemRequestBuilderGetQueryParameters(
		select = ["subject","body","bodyPreview","uniqueBody"],
)

request_configuration = MessageItemRequestBuilder.MessageItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Prefer", "outlook.body-content-type=\"text\"")


result = await graph_client.me.messages.by_message_id('message-id').get(request_configuration = request_configuration)


```