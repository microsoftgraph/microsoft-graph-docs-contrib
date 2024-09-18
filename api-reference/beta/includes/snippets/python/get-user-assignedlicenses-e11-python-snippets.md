---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.users_request_builder import UsersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsersRequestBuilder.UsersRequestBuilderGetQueryParameters(
		select = ["id","mail","assignedLicenses"],
		filter = "assignedLicenses/any(u:u/skuId eq cbdc14ab-d96c-4c30-b9f4-6ada7cdc1d46)",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.get(request_configuration = request_configuration)


```