---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment import UnifiedRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleAssignment(
	odata_type = "#microsoft.graph.unifiedRoleAssignment",
	principal_id = "6b937a9d-c731-465b-a844-2d5b5368c161",
	role_definition_id = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
	directory_scope_id = "/661e1310-bd76-4795-89a7-8f3c8f855bfc",
)

result = await graph_client.role_management.directory.role_assignments.post(request_body)


```