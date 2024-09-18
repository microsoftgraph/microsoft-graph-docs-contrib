---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.users_request_builder import UsersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsersRequestBuilder.UsersRequestBuilderGetQueryParameters(
		filter = "startswith(displayName,'Eric')",
		select = ["displayName","signInActivity"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.get(request_configuration = request_configuration)


```