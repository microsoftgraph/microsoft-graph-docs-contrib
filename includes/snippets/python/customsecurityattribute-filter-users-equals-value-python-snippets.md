---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UsersRequestBuilder.UsersRequestBuilderGetQueryParameters(
		count = true,
		select = ["id","displayName","customSecurityAttributes"],
		filter = "customSecurityAttributes/Marketing/AppCountry eq 'Canada'",
)

request_configuration = UsersRequestBuilder.UsersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)


result = await client.users.get(request_configuration = request_configuration)


```