---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
		filter = "Extensions/any(f:f/id eq 'Com.Contoso.Referral')",
		expand = ["Extensions($filter=id eq 'Com.Contoso.Referral')"],
)

request_configuration = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.messages.get(request_configuration = request_configuration)


```