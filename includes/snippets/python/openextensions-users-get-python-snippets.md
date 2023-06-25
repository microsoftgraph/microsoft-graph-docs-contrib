---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MeRequestBuilder.MeRequestBuilderGetQueryParameters(
		select = ["id","displayName","mail","mobilePhone"],
		expand = ["extensions"],
)

request_configuration = MeRequestBuilder.MeRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.get(request_configuration = request_configuration)


```