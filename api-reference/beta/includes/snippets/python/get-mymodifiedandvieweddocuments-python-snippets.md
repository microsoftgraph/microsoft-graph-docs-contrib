---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UsedRequestBuilder.UsedRequestBuilderGetQueryParameters(
		orderby = ["LastUsed/LastAccessedDateTime desc"],
)

request_configuration = UsedRequestBuilder.UsedRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.insights.used.get(request_configuration = request_configuration)


```