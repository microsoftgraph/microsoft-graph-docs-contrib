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
from msgraph.generated.models.requestor_manager import RequestorManager
from msgraph.generated.models.single_user import SingleUser
from msgraph.generated.models.access_package import AccessPackage

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	id = "87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187",
	display_name = "All Users",
	description = "All users can request for access to the directory.",
	allowed_target_scope = AllowedTargetScope.AllDirectoryUsers,
	automatic_request_settings = None,
	specific_allowed_targets = [
	],
	expiration = ExpirationPattern(
		type = ExpirationPatternType.NoExpiration,
	),
	requestor_settings = AccessPackageAssignmentRequestorSettings(
		enable_targets_to_self_add_access = True,
		enable_targets_to_self_update_access = False,
		enable_targets_to_self_remove_access = True,
		allow_custom_assignment_schedule = False,
		enable_on_behalf_requestors_to_add_access = False,
		enable_on_behalf_requestors_to_update_access = False,
		enable_on_behalf_requestors_to_remove_access = False,
		on_behalf_requestors = [
		],
	),
	request_approval_settings = AccessPackageAssignmentApprovalSettings(
		is_approval_required_for_add = True,
		is_approval_required_for_update = False,
		stages = [
			AccessPackageApprovalStage(
				duration_before_automatic_denial = "P2D",
				is_approver_justification_required = False,
				is_escalation_enabled = False,
				duration_before_escalation = "PT0S",
				primary_approvers = [
					RequestorManager(
						odata_type = "#microsoft.graph.requestorManager",
						manager_level = 1,
					),
				],
				fallback_primary_approvers = [
					SingleUser(
						odata_type = "#microsoft.graph.singleUser",
						user_id = "e6bf4d7d-6824-4dd0-809d-5bf42d4817c2",
						description = "user",
					),
				],
				escalation_approvers = [
				],
				fallback_escalation_approvers = [
				],
			),
		],
	),
	access_package = AccessPackage(
		id = "49d2c59b-0a81-463d-a8ec-ddad3935d8a0",
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.by_access_package_assignment_policy_id('accessPackageAssignmentPolicy-id').put(request_body)


```