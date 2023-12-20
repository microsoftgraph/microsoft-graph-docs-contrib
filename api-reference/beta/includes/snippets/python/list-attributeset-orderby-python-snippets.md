---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = AttributeSetsRequestBuilder.AttributeSetsRequestBuilderGetQueryParameters(
		orderby = ["id"],
)

request_configuration = AttributeSetsRequestBuilder.AttributeSetsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.attribute_sets.get(request_configuration = request_configuration)


```