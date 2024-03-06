---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.roleManagement.directory.roleAssignments.role_assignments_request_builder import RoleAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		filter = "principalId eq '7146daa8-1b4b-4a66-b2f7-cf593d03c8d2'",
)

request_configuration = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignments.get(request_configuration = request_configuration)


```