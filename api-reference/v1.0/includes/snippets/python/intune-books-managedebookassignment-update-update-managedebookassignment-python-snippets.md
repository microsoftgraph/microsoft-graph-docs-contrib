---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.managed_e_book_assignment import ManagedEBookAssignment
from msgraph.generated.models.all_licensed_users_assignment_target import AllLicensedUsersAssignmentTarget
from msgraph.generated.models.install_intent import InstallIntent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ManagedEBookAssignment(
	odata_type = "#microsoft.graph.managedEBookAssignment",
	target = AllLicensedUsersAssignmentTarget(
		odata_type = "microsoft.graph.allLicensedUsersAssignmentTarget",
	),
	install_intent = InstallIntent.Required,
)

result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').assignments.by_managed_e_book_assignment_id('managedEBookAssignment-id').patch(request_body)


```