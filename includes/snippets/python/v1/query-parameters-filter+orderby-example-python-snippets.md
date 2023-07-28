---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		filter = "Subject eq 'welcome' and importance eq 'normal'",
		orderby = ["subject","importance","receivedDateTime desc"],
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.messages.get(request_configuration = request_configuration)


```