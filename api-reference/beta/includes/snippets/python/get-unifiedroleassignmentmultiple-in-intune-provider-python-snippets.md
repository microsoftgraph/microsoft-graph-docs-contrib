---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.role_management.device_management.role_assignments.role_assignments_request_builder import RoleAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		filter = " principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')",
)

request_configuration = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.device_management.role_assignments.get(request_configuration = request_configuration)


```