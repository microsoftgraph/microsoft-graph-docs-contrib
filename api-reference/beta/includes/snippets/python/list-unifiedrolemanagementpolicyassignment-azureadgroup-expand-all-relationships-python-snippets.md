---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.policies.roleManagementPolicyAssignments.role_management_policy_assignments_request_builder import RoleManagementPolicyAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleManagementPolicyAssignmentsRequestBuilder.RoleManagementPolicyAssignmentsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group' and roleDefinitionId eq 'owner'",
		expand = ["policy($expand=rules)"],
)

request_configuration = RoleManagementPolicyAssignmentsRequestBuilder.RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policy_assignments.get(request_configuration = request_configuration)


```