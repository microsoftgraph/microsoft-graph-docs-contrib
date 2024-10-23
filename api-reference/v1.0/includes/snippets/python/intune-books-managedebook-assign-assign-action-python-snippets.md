---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.deviceappmanagement.managedebooks.item.assign.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.managed_e_book_assignment import ManagedEBookAssignment
from msgraph.generated.models.all_licensed_users_assignment_target import AllLicensedUsersAssignmentTarget
from msgraph.generated.models.install_intent import InstallIntent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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