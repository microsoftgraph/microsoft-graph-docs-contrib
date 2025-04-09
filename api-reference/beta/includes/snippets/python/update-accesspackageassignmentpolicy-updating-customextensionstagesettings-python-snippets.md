---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph_beta.generated.models.requestor_settings import RequestorSettings
from msgraph_beta.generated.models.approval_settings import ApprovalSettings
from msgraph_beta.generated.models.access_package import AccessPackage
from msgraph_beta.generated.models.custom_extension_stage_setting import CustomExtensionStageSetting
from msgraph_beta.generated.models.access_package_custom_extension_stage import AccessPackageCustomExtensionStage
from msgraph_beta.generated.models.access_package_assignment_request_workflow_extension import AccessPackageAssignmentRequestWorkflowExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentPolicy(
	display_name = "API Created policy with updated customExtensionStageSettings",
	description = "policy with updated customExtensionStageSettings",
	requestor_settings = RequestorSettings(
		additional_data = {
				"enable_targets_to_self_add_access" : False,
				"enable_targets_to_self_update_access" : False,
				"enable_targets_to_self_remove_access" : False,
				"allow_custom_assignment_schedule" : True,
				"enable_on_behalf_requestors_to_add_access" : False,
				"enable_on_behalf_requestors_to_update_access" : False,
				"enable_on_behalf_requestors_to_remove_access" : False,
				"on_behalf_requestors" : [
				],
		}
	),
	request_approval_settings = ApprovalSettings(
		additional_data = {
				"is_approval_required_for_add" : False,
				"is_approval_required_for_update" : False,
				"stages" : [
				],
		}
	),
	access_package = AccessPackage(
		id = "f9afd2e3-7486-40df-9c35-aa2ae108c495",
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
	additional_data = {
			"allowed_target_scope" : "notSpecified",
			"specific_allowed_targets" : [
			],
			"expiration" : {
					"end_date_time" : None,
					"duration" : None,
					"type" : "noExpiration",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.by_access_package_assignment_policy_id('accessPackageAssignmentPolicy-id').put(request_body)


```