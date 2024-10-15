---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.allowed_target_scope import AllowedTargetScope
from msgraph.generated.models.subject_set import SubjectSet
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.expiration_pattern_type import ExpirationPatternType
from msgraph.generated.models.access_package_assignment_requestor_settings import AccessPackageAssignmentRequestorSettings
from msgraph.generated.models.access_package_assignment_approval_settings import AccessPackageAssignmentApprovalSettings
from msgraph.generated.models.access_package_approval_stage import AccessPackageApprovalStage
from msgraph.generated.models.access_package import AccessPackage
from msgraph.generated.models.custom_extension_stage_setting import CustomExtensionStageSetting
from msgraph.generated.models.access_package_custom_extension_stage import AccessPackageCustomExtensionStage
from msgraph.generated.models.access_package_assignment_request_workflow_extension import AccessPackageAssignmentRequestWorkflowExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentPolicy(
	display_name = "customExtensionStageSettings policy",
	description = "policy with specified stages for custom extension assignment",
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
		id = "5ad1eb64-15f7-4614-b419-05d11ee266bf",
	),
	custom_extension_stage_settings = [
		CustomExtensionStageSetting(
			stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
			custom_extension = AccessPackageAssignmentRequestWorkflowExtension(
				odata_type = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
				id = "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476",
			),
		),
	],
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.post(request_body)


```