---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unified_role_assignment import UnifiedRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleAssignment(
	odata_type = "#microsoft.graph.unifiedRoleAssignment",
	role_definition_id = "c2cf284d-6c41-4e6b-afac-4b80928c9034",
	principal_id = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	directory_scope_id = "/",
)

result = await graph_client.role_management.directory.role_assignments.post(request_body)


```