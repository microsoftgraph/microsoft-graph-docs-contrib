---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetQueryParameters(
		filter = "startswith(displayName, 'a')",
		count = True,
		top = 1,
		orderby = ["displayName"],
)

request_configuration = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)

result = await graph_client.applications.get(request_configuration = request_configuration)


```