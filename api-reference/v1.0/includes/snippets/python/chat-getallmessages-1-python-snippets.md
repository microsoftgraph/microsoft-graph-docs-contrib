---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GetAllMessagesRequestBuilder.GetAllMessagesRequestBuilderGetQueryParameters(
		top = 2,
)

request_configuration = GetAllMessagesRequestBuilder.GetAllMessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.users.by_user_id('user-id').chats.get_all_messages.get(request_configuration = request_configuration)


```