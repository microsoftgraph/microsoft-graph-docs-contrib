---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ios_vpp_e_book_assignment import IosVppEBookAssignment
from msgraph.generated.models.device_and_app_management_assignment_target import DeviceAndAppManagementAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosVppEBookAssignment(
	odata_type = "#microsoft.graph.iosVppEBookAssignment",
	target = DeviceAndAppManagementAssignmentTarget(
		odata_type = "microsoft.graph.deviceAndAppManagementAssignmentTarget",
	),
	install_intent = InstallIntent.Required,
)

result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').assignments.by_managed_e_book_assignment_id('managedEBookAssignment-id').patch(request_body)


```