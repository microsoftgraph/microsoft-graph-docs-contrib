---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MembersRequestBuilder.MembersRequestBuilderGetQueryParameters(
		count = true,
		filter = "startswith(displayName, 'a')",
)

request_configuration = MembersRequestBuilder.MembersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)


result = await client.groups.by_group_id('group-id').members.get(request_configuration = request_configuration)


```