---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = SitesRequestBuilder.SitesRequestBuilderGetQueryParameters(
		search = "{query}",
)

request_configuration = SitesRequestBuilder.SitesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.get(request_configuration = request_configuration)


```