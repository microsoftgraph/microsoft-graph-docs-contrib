---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unified_role_assignment_multiple import UnifiedRoleAssignmentMultiple
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleAssignmentMultiple(
	display_name = "NewName",
	description = "A new roleAssignment",
)

result = await graph_client.role_management.cloud_p_c.role_assignments.by_unified_role_assignment_multiple_id('unifiedRoleAssignmentMultiple-id').patch(request_body)


```