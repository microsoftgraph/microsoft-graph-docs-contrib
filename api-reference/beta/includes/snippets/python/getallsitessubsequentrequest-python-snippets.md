---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GetAllSitesRequestBuilder.GetAllSitesRequestBuilderGetQueryParameters(
		skiptoken = "U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ",
)

request_configuration = GetAllSitesRequestBuilder.GetAllSitesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.sites.get_all_sites.get(request_configuration = request_configuration)


```