---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.requestor_settings import RequestorSettings
from msgraph.generated.models.user_set import UserSet
from msgraph.generated.models.custom_extension_handler import CustomExtensionHandler

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	id = "5540a08f-8ab5-43f6-a923-015275799197",
	display_name = "policy with access package custom workflow extension",
	description = "Run specified access package custom workflow extension at different stages.",
	access_package_id = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	request_approval_settings = None,
	requestor_settings = RequestorSettings(
		accept_requests = True,
		scope_type = "AllExistingDirectorySubjects",
		allowed_requestors = [
		],
	),
	access_review_settings = None,
	custom_extension_handlers = [
	],
	additional_data = {
			"expiration" : {
					"type" : "afterDuration",
					"duration" : "P365D",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.by_access_package_assignment_policy_id('accessPackageAssignmentPolicy-id').put(request_body)


```