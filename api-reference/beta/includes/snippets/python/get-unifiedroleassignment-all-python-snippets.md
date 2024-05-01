---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.role_management.directory.transitive_role_assignments.transitive_role_assignments_request_builder import TransitiveRoleAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TransitiveRoleAssignmentsRequestBuilder.TransitiveRoleAssignmentsRequestBuilderGetQueryParameters(
		count = True,
		filter = "principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516'",
)

request_configuration = TransitiveRoleAssignmentsRequestBuilder.TransitiveRoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.role_management.directory.transitive_role_assignments.get(request_configuration = request_configuration)


```