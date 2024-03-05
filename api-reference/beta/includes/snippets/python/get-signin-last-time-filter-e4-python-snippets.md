---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.users_request_builder import UsersRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsersRequestBuilder.UsersRequestBuilderGetQueryParameters(
		filter = "startswith(displayName,'Eric')",
		select = ["displayName","signInActivity"],
)

request_configuration = UsersRequestBuilder.UsersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.get(request_configuration = request_configuration)


```