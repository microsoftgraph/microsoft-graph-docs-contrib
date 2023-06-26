---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UsersRequestBuilder.UsersRequestBuilderGetQueryParameters(
		select = ["displayName","id"],
		filter = "identities/any(c:c/issuerAssignedId eq 'j.smith@yahoo.com' and c/issuer eq 'My B2C tenant')",
)

request_configuration = UsersRequestBuilder.UsersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.users.get(request_configuration = request_configuration)


```