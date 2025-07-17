---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph_beta.generated.models.requestor_settings import RequestorSettings
from msgraph_beta.generated.models.user_set import UserSet
from msgraph_beta.generated.models.access_package_question import AccessPackageQuestion
from msgraph_beta.generated.models.custom_extension_handler import CustomExtensionHandler
from msgraph_beta.generated.models.access_package_custom_extension_stage import AccessPackageCustomExtensionStage
from msgraph_beta.generated.models.custom_access_package_workflow_extension import CustomAccessPackageWorkflowExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentPolicy(
	display_name = "extension-policy",
	description = "test",
	access_package_id = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	can_extend = False,
	request_approval_settings = None,
	requestor_settings = RequestorSettings(
		accept_requests = True,
		scope_type = "AllExistingDirectorySubjects",
		allowed_requestors = [
		],
		additional_data = {
				"is_on_behalf_allowed" : False,
		}
	),
	access_review_settings = None,
	questions = [
	],
	custom_extension_handlers = [
		CustomExtensionHandler(
			stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
			custom_extension = CustomAccessPackageWorkflowExtension(
				id = "219f57b6-7983-45a1-be01-2c228b7a43f8",
			),
		),
		CustomExtensionHandler(
			stage = AccessPackageCustomExtensionStage.AssignmentRequestGranted,
			custom_extension = CustomAccessPackageWorkflowExtension(
				id = "219f57b6-7983-45a1-be01-2c228b7a43f8",
			),
		),
	],
	additional_data = {
			"expiration" : {
					"type" : "afterDuration",
					"duration" : "P365D",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.post(request_body)


```