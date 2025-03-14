---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.expiration_pattern_type import ExpirationPatternType
from msgraph.generated.models.access_package_assignment_requestor_settings import AccessPackageAssignmentRequestorSettings
from msgraph.generated.models.custom_extension_stage_setting import CustomExtensionStageSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentPolicy(
	id = "5540a08f-8ab5-43f6-a923-015275799197",
	display_name = "policy with access package custom workflow extension",
	description = "Run specified access package custom workflow extension at different stages.",
	expiration = ExpirationPattern(
		type = ExpirationPatternType.AfterDuration,
		duration = "P365D",
	),
	request_approval_settings = None,
	requestor_settings = AccessPackageAssignmentRequestorSettings(
		additional_data = {
				"accept_requests" : True,
				"scope_type" : "AllExistingDirectorySubjects",
				"allowed_requestors" : [
				],
		}
	),
	custom_extension_stage_settings = [
	],
	additional_data = {
			"access_package_id" : "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
			"access_review_settings" : None,
	}
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.by_access_package_assignment_policy_id('accessPackageAssignmentPolicy-id').put(request_body)


```