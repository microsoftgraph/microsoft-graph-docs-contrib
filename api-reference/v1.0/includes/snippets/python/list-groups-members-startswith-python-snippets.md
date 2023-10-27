---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = MembersRequestBuilder.MembersRequestBuilderGetQueryParameters(
		count = True,
		filter = "startswith(displayName, 'a')",
)

request_configuration = MembersRequestBuilder.MembersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)

result = await graph_client.groups.by_group_id('group-id').members.get(request_configuration = request_configuration)


```