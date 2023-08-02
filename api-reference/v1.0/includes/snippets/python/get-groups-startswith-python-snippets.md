---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GroupsRequestBuilder.GroupsRequestBuilderGetQueryParameters(
		filter = "startswith(displayName, 'a')",
		count = true,
		top = 1,
		orderby = ["displayName"],
)

request_configuration = GroupsRequestBuilder.GroupsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)


result = await client.groups.get(request_configuration = request_configuration)


```