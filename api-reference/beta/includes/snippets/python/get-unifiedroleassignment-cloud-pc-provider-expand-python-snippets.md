---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = UnifiedRoleAssignmentMultipleRequestBuilder.UnifiedRoleAssignmentMultipleRequestBuilderGetQueryParameters(
		expand = ["roleDefinition"],
)

request_configuration = UnifiedRoleAssignmentMultipleRequestBuilder.UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.cloud_p_c.role_assignments.by_role_assignment_id('unifiedRoleAssignmentMultiple-id').get(request_configuration = request_configuration)


```