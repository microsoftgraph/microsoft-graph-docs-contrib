---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.resume_post_request_body import ResumePostRequestBody
from msgraph_beta.generated.models.custom_extension_data import CustomExtensionData
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ResumePostRequestBody(
	source = "Contoso.CustoEXT",
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	data = CustomExtensionData(
		odata_type = "microsoft.graph.microsoft.graph.assignmentRequestApprovalStageCallbackData",
		additional_data = {
				"approval_stage" : {
						"duration_before_automatic_denial" : "P2D",
						"escalation_approvers" : [
						],
						"fallback_escalation_approvers" : [
						],
						"fallback_primary_approvers" : [
						],
						"is_approver_justification_required" : False,
						"is_escalation_enabled" : False,
						"primary_approvers" : [
							{
									"@@odata_type" : "#microsoft.graph.singleUser",
									"description" : "Primary approver of access package assignment.",
									"id" : "",
									"is_backup" : False,
							},
						],
				},
				"custom_extension_stage_instance_detail" : "A approval stage from Logic Apps",
				"custom_extension_stage_instance_id" : "@{triggerBody()?['CustomExtensionStageInstanceId']}",
				"stage" : "assignmentRequestDeterminingApprovalRequirements",
		}
	),
	source = "LogicApps",
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
)

await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.by_access_package_assignment_request_id('accessPackageAssignmentRequest-id').resume.post(request_body)


```