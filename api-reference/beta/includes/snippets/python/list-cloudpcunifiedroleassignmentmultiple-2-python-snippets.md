---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.roleManagement.cloudPC.roleAssignments.role_assignments_request_builder import RoleAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		filter = "roleDefinitionId eq 'b5c08161-a7af-481c-ace2-a20a69a48fb1'",
)

request_configuration = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.cloud_p_c.role_assignments.get(request_configuration = request_configuration)


```