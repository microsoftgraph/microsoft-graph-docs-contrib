---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.subject_set import SubjectSet
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.access_package_assignment_requestor_settings import AccessPackageAssignmentRequestorSettings
from msgraph.generated.models.access_package_assignment_approval_settings import AccessPackageAssignmentApprovalSettings
from msgraph.generated.models.access_package_approval_stage import AccessPackageApprovalStage
from msgraph.generated.models.access_package import AccessPackage

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	display_name = "New Policy",
	description = "policy for assignment",
	allowed_target_scope = AllowedTargetScope.NotSpecified,
	specific_allowed_targets = [
	],
	expiration = ExpirationPattern(
		end_date_time = None,
		duration = None,
		type = ExpirationPatternType.NoExpiration,
	),
	requestor_settings = AccessPackageAssignmentRequestorSettings(
		enable_targets_to_self_add_access = False,
		enable_targets_to_self_update_access = False,
		enable_targets_to_self_remove_access = False,
		allow_custom_assignment_schedule = True,
		enable_on_behalf_requestors_to_add_access = False,
		enable_on_behalf_requestors_to_update_access = False,
		enable_on_behalf_requestors_to_remove_access = False,
		on_behalf_requestors = [
		],
	),
	request_approval_settings = AccessPackageAssignmentApprovalSettings(
		is_approval_required_for_add = False,
		is_approval_required_for_update = False,
		stages = [
		],
	),
	access_package = AccessPackage(
		id = "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b",
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.post(request_body)


```