---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = UnifiedRoleManagementPolicyAssignmentItemRequestBuilder.UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetQueryParameters(
		expand = ["policy($expand=rules)"],
)

request_configuration = UnifiedRoleManagementPolicyAssignmentItemRequestBuilder.UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policy_assignments.by_unified_role_management_policy_assignment_id('unifiedRoleManagementPolicyAssignment-id').get(request_configuration = request_configuration)


```