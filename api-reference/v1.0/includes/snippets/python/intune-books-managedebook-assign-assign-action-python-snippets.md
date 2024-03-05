---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.managed_e_book_assignment import ManagedEBookAssignment
from msgraph.generated.models.all_licensed_users_assignment_target import AllLicensedUsersAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignPostRequestBody(
	managed_e_book_assignments = [
		ManagedEBookAssignment(
			odata_type = "#microsoft.graph.managedEBookAssignment",
			id = "ae8b0d27-0d27-ae8b-270d-8bae270d8bae",
			target = AllLicensedUsersAssignmentTarget(
				odata_type = "microsoft.graph.allLicensedUsersAssignmentTarget",
			),
			install_intent = InstallIntent.Required,
		),
	],
)

await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').assign.post(request_body)


```