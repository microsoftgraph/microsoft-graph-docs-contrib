---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.access_package_question import AccessPackageQuestion
from msgraph.generated.models.access_package_assignment_requestor_settings import AccessPackageAssignmentRequestorSettings
from msgraph.generated.models.access_package_assignment_approval_settings import AccessPackageAssignmentApprovalSettings
from msgraph.generated.models.custom_extension_stage_setting import CustomExtensionStageSetting
from msgraph.generated.models.access_package_custom_extension_stage import AccessPackageCustomExtensionStage
from msgraph.generated.models.access_package_assignment_request_workflow_extension import AccessPackageAssignmentRequestWorkflowExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentPolicy(
	display_name = "Dynamic approver policy",
	description = "Dynamic approver policy",
	questions = [
	],
	requestor_settings = AccessPackageAssignmentRequestorSettings(
		additional_data = {
				"scope_type" : "AllExistingDirectorySubjects",
				"accept_requests" : True,
				"allowed_requestors" : [
				],
		}
	),
	request_approval_settings = AccessPackageAssignmentApprovalSettings(
		is_requestor_justification_required = True,
		additional_data = {
				"is_approval_required" : True,
				"is_approval_required_for_extension" : False,
				"approval_mode" : "SingleStage",
				"approval_stages" : [
					{
							"@odata_type" : "#microsoft.graph.accessPackageDynamicApprovalStage",
							"custom_extension" : {
									"@odata_type" : "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
									"id" : "52036a43-10b5-444d-a1a2-d4f240420239",
							},
					},
				],
		}
	),
	custom_extension_stage_settings = [
		CustomExtensionStageSetting(
			stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
			custom_extension = AccessPackageAssignmentRequestWorkflowExtension(
				odata_type = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
				id = "52036a43-10b5-444d-a1a2-d4f240420239",
			),
		),
	],
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/$entity",
			"can_extend" : False,
			"duration_in_days" : 0,
			"expiration_date_time" : None,
			"access_package_id" : "fc29cdca-57f6-47e3-b20c-3fa18e4826ac",
			"access_review_settings" : None,
			"access_package_notification_settings" : {
					"is_assignment_notification_disabled" : False,
			},
			"verifiable_credential_settings" : {
					"credential_types" : [
					],
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.post(request_body)


```