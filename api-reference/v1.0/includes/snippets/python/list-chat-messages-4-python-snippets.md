---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		top = 2,
		orderby = ["lastModifiedDateTime desc"],
		filter = "lastModifiedDateTime gt 2022-09-22T00:00:00.000Z and lastModifiedDateTime lt 2022-09-24T00:00:00.000Z",
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.chats.by_chat_id('chat-id').messages.get(request_configuration = request_configuration)


```