---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosVppEBookAssignment(
	odata_type = "#microsoft.graph.iosVppEBookAssignment",
	target = DeviceAndAppManagementAssignmentTarget(
		odata_type = "microsoft.graph.deviceAndAppManagementAssignmentTarget",
	),
	install_intent = InstallIntent.Required,
)

result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').assignments.post(request_body)


```