---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.users_request_builder import UsersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsersRequestBuilder.UsersRequestBuilderGetQueryParameters(
		filter = "assignedLicenses/any(s:s/skuId eq 184efa21-98c3-4e5d-95ab-d07053a96e67)",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.get(request_configuration = request_configuration)


```