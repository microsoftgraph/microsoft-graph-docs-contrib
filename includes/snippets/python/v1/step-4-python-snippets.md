---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		top = 2,
		filter = "lastModifiedDateTime gt 2021-03-17T07:13:28.000z",
		orderby = ["createdDateTime desc"],
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.users.by_user_id('user-id').chats.by_chat_id('chat-id').messages.get(request_configuration = request_configuration)


```