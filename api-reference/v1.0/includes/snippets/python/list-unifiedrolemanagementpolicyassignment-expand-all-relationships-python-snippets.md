---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.policies.roleManagementPolicyAssignments.role_management_policy_assignments_request_builder import RoleManagementPolicyAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleManagementPolicyAssignmentsRequestBuilder.RoleManagementPolicyAssignmentsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '/' and scopeType eq 'DirectoryRole' and roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'",
		expand = ["policy($expand=rules)"],
)

request_configuration = RoleManagementPolicyAssignmentsRequestBuilder.RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policy_assignments.get(request_configuration = request_configuration)


```