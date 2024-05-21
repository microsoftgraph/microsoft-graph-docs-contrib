---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.role_management.directory.role_assignments.role_assignments_request_builder import RoleAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		expand = ["roleDefinition"],
		filter = "roleDefinition/isPrivileged eq true",
)

request_configuration = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignments.get(request_configuration = request_configuration)


```