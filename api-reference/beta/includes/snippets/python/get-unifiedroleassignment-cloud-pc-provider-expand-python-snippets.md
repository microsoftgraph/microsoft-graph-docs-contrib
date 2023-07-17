---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UnifiedRoleAssignmentMultipleRequestBuilder.UnifiedRoleAssignmentMultipleRequestBuilderGetQueryParameters(
		expand = ["roleDefinition"],
)

request_configuration = UnifiedRoleAssignmentMultipleRequestBuilder.UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.role_management.cloud_p_c.role_assignments.by_role_assignment_id('unifiedRoleAssignmentMultiple-id').get(request_configuration = request_configuration)


```