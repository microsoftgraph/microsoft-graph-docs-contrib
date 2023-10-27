---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = UnifiedRoleAssignmentMultipleItemRequestBuilder.UnifiedRoleAssignmentMultipleItemRequestBuilderGetQueryParameters(
		expand = ["roleDefinition","principals","directoryScopes"],
)

request_configuration = UnifiedRoleAssignmentMultipleItemRequestBuilder.UnifiedRoleAssignmentMultipleItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.device_management.role_assignments.by_unified_role_assignment_multiple_id('unifiedRoleAssignmentMultiple-id').get(request_configuration = request_configuration)


```