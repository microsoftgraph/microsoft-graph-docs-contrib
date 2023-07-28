---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MessageRequestBuilder.MessageRequestBuilderGetQueryParameters(
		expand = ["singleValueExtendedProperties($filter=id eq 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color')"],
)

request_configuration = MessageRequestBuilder.MessageRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.messages.by_message_id('message-id').get(request_configuration = request_configuration)


```