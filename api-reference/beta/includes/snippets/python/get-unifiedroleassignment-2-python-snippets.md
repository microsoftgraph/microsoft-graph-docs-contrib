---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = UnifiedRoleAssignmentRequestBuilder.UnifiedRoleAssignmentRequestBuilderGetQueryParameters(
		expand = ["roleDefinition"],
)

request_configuration = UnifiedRoleAssignmentRequestBuilder.UnifiedRoleAssignmentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignments.by_role_assignment_id('unifiedRoleAssignment-id').get(request_configuration = request_configuration)


```