---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.app_role_assignments.app_role_assignments_request_builder import AppRoleAssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AppRoleAssignmentsRequestBuilder.AppRoleAssignmentsRequestBuilderGetQueryParameters(
		count = True,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.users.by_user_id('user-id').app_role_assignments.get(request_configuration = request_configuration)


```