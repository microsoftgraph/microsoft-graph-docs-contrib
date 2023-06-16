---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ChatRequestBuilder.ChatRequestBuilderGetQueryParameters(
		expand = ["members"],
)

request_configuration = ChatRequestBuilder.ChatRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.chats.by_chat_id('chat-id').get(request_configuration = request_configuration)


```