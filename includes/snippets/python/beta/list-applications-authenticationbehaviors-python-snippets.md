---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetQueryParameters(
		select = ["id","displayName","appId","authenticationBehaviors"],
)

request_configuration = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.applications.get(request_configuration = request_configuration)


```