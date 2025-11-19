---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.app_role_assignment import AppRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppRoleAssignment(
	odata_type = "#microsoft.graph.appRoleAssignment",
	deleted_date_time = "String (timestamp)",
	app_role_id = UUID("Guid"),
	creation_timestamp = "String (timestamp)",
	principal_display_name = "String",
	principal_id = UUID("Guid"),
	principal_type = "String",
	resource_display_name = "String",
	resource_id = UUID("Guid"),
)

result = await graph_client.users.by_user_id('user-id').app_role_assignments.post(request_body)


```