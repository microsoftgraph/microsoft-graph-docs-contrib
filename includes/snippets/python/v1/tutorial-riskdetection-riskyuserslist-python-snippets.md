---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityProtection.riskyUsers.risky_users_request_builder import RiskyUsersRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RiskyUsersRequestBuilder.RiskyUsersRequestBuilderGetQueryParameters(
		filter = "userDisplayName eq 'MyTestUser1'",
)

request_configuration = RiskyUsersRequestBuilder.RiskyUsersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_protection.risky_users.get(request_configuration = request_configuration)


```