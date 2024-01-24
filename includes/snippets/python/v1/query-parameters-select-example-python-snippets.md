---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		select = ["from","subject"],
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.messages.get(request_configuration = request_configuration)


```