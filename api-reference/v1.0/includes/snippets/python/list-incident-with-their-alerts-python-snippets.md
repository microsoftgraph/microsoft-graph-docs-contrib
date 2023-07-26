---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = IncidentsRequestBuilder.IncidentsRequestBuilderGetQueryParameters(
		expand = ["alerts"],
)

request_configuration = IncidentsRequestBuilder.IncidentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.security.incidents.get(request_configuration = request_configuration)


```