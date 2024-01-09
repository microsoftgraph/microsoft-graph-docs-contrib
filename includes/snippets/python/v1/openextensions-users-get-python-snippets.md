---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = MeRequestBuilder.MeRequestBuilderGetQueryParameters(
		select = ["id","displayName","mail","mobilePhone"],
		expand = ["extensions"],
)

request_configuration = MeRequestBuilder.MeRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.get(request_configuration = request_configuration)


```