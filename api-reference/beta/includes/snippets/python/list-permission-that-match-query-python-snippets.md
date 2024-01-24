---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = SitesRequestBuilder.SitesRequestBuilderGetQueryParameters(
		search = "{query}",
)

request_configuration = SitesRequestBuilder.SitesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.get(request_configuration = request_configuration)


```