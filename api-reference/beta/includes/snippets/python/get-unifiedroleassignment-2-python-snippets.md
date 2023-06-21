---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UnifiedRoleAssignmentRequestBuilder.UnifiedRoleAssignmentRequestBuilderGetQueryParameters(
		expand = ["roleDefinition"],
)

request_configuration = UnifiedRoleAssignmentRequestBuilder.UnifiedRoleAssignmentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.role_management.directory.role_assignments.by_role_assignment_id('unifiedRoleAssignment-id').get(request_configuration = request_configuration)


```