---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UserRequestBuilder.UserRequestBuilderGetQueryParameters(
		select = ["displayName","givenName","postalCode","identities"],
)

request_configuration = UserRequestBuilder.UserRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.users.by_user_id('user-id').get(request_configuration = request_configuration)


```