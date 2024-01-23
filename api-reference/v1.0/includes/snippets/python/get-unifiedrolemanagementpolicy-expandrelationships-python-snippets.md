---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = UnifiedRoleManagementPolicyItemRequestBuilder.UnifiedRoleManagementPolicyItemRequestBuilderGetQueryParameters(
		expand = ["effectiveRules","rules"],
)

request_configuration = UnifiedRoleManagementPolicyItemRequestBuilder.UnifiedRoleManagementPolicyItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policies.by_unified_role_management_policy_id('unifiedRoleManagementPolicy-id').get(request_configuration = request_configuration)


```