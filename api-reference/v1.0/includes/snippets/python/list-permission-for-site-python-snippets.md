---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = SitesRequestBuilder.SitesRequestBuilderGetQueryParameters(
		search = "{query}",
)

request_configuration = SitesRequestBuilder.SitesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.sites.get(request_configuration = request_configuration)


```