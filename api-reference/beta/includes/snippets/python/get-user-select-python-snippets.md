---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserItemRequestBuilder.UserItemRequestBuilderGetQueryParameters(
		select = ["displayName","givenName","postalCode","identities"],
)

request_configuration = UserItemRequestBuilder.UserItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').get(request_configuration = request_configuration)


```