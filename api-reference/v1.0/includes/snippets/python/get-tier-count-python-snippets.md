---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserRequestBuilder.UserRequestBuilderGetQueryParameters(
		count = True,
		orderby = ["displayName"],
		search = "\"displayName:tier\"",
		select = ["displayName","id"],
)

request_configuration = UserRequestBuilder.UserRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)

result = await graph_client.groups.by_group_id('group-id').transitive_members.graph_user.get(request_configuration = request_configuration)


```