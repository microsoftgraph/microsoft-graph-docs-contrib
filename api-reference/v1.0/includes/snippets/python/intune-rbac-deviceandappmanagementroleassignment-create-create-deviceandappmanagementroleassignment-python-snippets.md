---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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

result = await graph_client.device_management.role_assignments.post(request_body)


```