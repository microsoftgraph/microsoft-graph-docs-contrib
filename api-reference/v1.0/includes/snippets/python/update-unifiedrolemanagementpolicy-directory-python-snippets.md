---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_management_policy import UnifiedRoleManagementPolicy
from msgraph.generated.models.unified_role_management_policy_rule import UnifiedRoleManagementPolicyRule
from msgraph.generated.models.unified_role_management_policy_approval_rule import UnifiedRoleManagementPolicyApprovalRule
from msgraph.generated.models.unified_role_management_policy_rule_target import UnifiedRoleManagementPolicyRuleTarget
from msgraph.generated.models.unified_role_management_policy_rule_target_operations import UnifiedRoleManagementPolicyRuleTargetOperations
from msgraph.generated.models.approval_settings import ApprovalSettings
from msgraph.generated.models.unified_approval_stage import UnifiedApprovalStage
from msgraph.generated.models.subject_set import SubjectSet
from msgraph.generated.models.unified_role_management_policy_authentication_context_rule import UnifiedRoleManagementPolicyAuthenticationContextRule
from msgraph.generated.models.unified_role_management_policy_enablement_rule import UnifiedRoleManagementPolicyEnablementRule
from msgraph.generated.models.unified_role_management_policy_expiration_rule import UnifiedRoleManagementPolicyExpirationRule
from msgraph.generated.models.unified_role_management_policy_notification_rule import UnifiedRoleManagementPolicyNotificationRule

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleManagementPolicy(
	rules = [
		UnifiedRoleManagementPolicyApprovalRule(
			odata_type = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
			id = "Approval_EndUser_Assignment",
			target = UnifiedRoleManagementPolicyRuleTarget(
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
				is_approval_required = False,
				is_approval_required_for_extension = False,
				is_requestor_justification_required = True,
				approval_mode = "SingleStage",
				approval_stages = [
					UnifiedApprovalStage(
						approval_stage_time_out_in_days = 1,
						is_approver_justification_required = True,
						escalation_time_in_minutes = 0,
						is_escalation_enabled = False,
						primary_approvers = [
						],
						escalation_approvers = [
						],
					),
				],
			),
		),
		UnifiedRoleManagementPolicyAuthenticationContextRule(
			odata_type = "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
			id = "AuthenticationContext_EndUser_Assignment",
			is_enabled = False,
			claim_value = "",
			target = UnifiedRoleManagementPolicyRuleTarget(
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
		),
		UnifiedRoleManagementPolicyEnablementRule(
			odata_type = "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
			id = "Enablement_Admin_Eligibility",
			enabled_rules = [
			],
			target = UnifiedRoleManagementPolicyRuleTarget(
				caller = "Admin",
				operations = [
					UnifiedRoleManagementPolicyRuleTargetOperations.All,
				],
				level = "Eligibility",
				inheritable_settings = [
				],
				enforced_settings = [
				],
			),
		),
		UnifiedRoleManagementPolicyExpirationRule(
			odata_type = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
			id = "Expiration_Admin_Eligibility",
			is_expiration_required = False,
			maximum_duration = "P365D",
			target = UnifiedRoleManagementPolicyRuleTarget(
				caller = "Admin",
				operations = [
					UnifiedRoleManagementPolicyRuleTargetOperations.All,
				],
				level = "Eligibility",
				inheritable_settings = [
				],
				enforced_settings = [
				],
			),
		),
		UnifiedRoleManagementPolicyNotificationRule(
			odata_type = "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
			id = "Notification_Admin_Admin_Eligibility",
			notification_type = "Email",
			recipient_type = "Admin",
			notification_level = "All",
			is_default_recipients_enabled = True,
			notification_recipients = [
			],
			target = UnifiedRoleManagementPolicyRuleTarget(
				caller = "Admin",
				operations = [
					UnifiedRoleManagementPolicyRuleTargetOperations.All,
				],
				level = "Eligibility",
				inheritable_settings = [
				],
				enforced_settings = [
				],
			),
		),
	],
)

result = await graph_client.policies.role_management_policies.by_unified_role_management_policy_id('unifiedRoleManagementPolicy-id').patch(request_body)


```