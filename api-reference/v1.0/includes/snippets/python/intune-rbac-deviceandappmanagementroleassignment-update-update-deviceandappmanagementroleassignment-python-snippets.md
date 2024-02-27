---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_and_app_management_role_assignment import DeviceAndAppManagementRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceAndAppManagementRoleAssignment(
	odata_type = "#microsoft.graph.deviceAndAppManagementRoleAssignment",
	display_name = "Display Name value",
	description = "Description value",
	resource_scopes = [
		"Resource Scopes value",
	],
	members = [
		"Members value",
	],
)

result = await graph_client.device_management.role_assignments.by_device_and_app_management_role_assignment_id('deviceAndAppManagementRoleAssignment-id').patch(request_body)


```