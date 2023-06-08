---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleAssignmentMultiple()
request_body.display_name = 'NewName'

request_body.description = 'A new roleAssignment'




result = await client.role_management.cloud_p_c.role_assignments.by_role_assignment_id('unifiedRoleAssignmentMultiple-id').patch(request_body = request_body)


```