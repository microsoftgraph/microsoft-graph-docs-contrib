---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleManagementPolicyApprovalRule(
	odata_type = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
	id = "Approval_EndUser_Assignment",
	target = UnifiedRoleManagementPolicyRuleTarget(
		odata_type = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
		caller = "EndUser",
		operations = [
			UnifiedRoleManagementPolicyRuleTargetOperations.All,
		],
		level = "Assignment",
		inheritable_settings = [
		],
		enforced_settings = [
		],
	),
	setting = ApprovalSettings(
		odata_type = "microsoft.graph.approvalSettings",
		is_approval_required = True,
		is_approval_required_for_extension = False,
		is_requestor_justification_required = True,
		approval_mode = "SingleStage",
		approval_stages = [
			UnifiedApprovalStage(
				odata_type = "microsoft.graph.unifiedApprovalStage",
				approval_stage_time_out_in_days = 1,
				is_approver_justification_required = True,
				escalation_time_in_minutes = 0,
				primary_approvers = [
					SingleUser(
						odata_type = "#microsoft.graph.singleUser",
						user_id = "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6",
					),
					GroupMembers(
						odata_type = "#microsoft.graph.groupMembers",
						group_id = "14f2746d-7d6f-4ac6-acd8-8cac318b041b",
					),
				],
				is_escalation_enabled = False,
				escalation_approvers = [
				],
			),
		],
	),
)

result = await graph_client.policies.role_management_policies.by_unified_role_management_policy_id('unifiedRoleManagementPolicy-id').rules.by_unified_role_management_policy_rule_id('unifiedRoleManagementPolicyRule-id').patch(request_body)


```