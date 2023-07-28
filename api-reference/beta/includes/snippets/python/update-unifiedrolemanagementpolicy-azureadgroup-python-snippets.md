---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleManagementPolicy()
rules_unified_role_management_policy_rule1 = UnifiedRoleManagementPolicyApprovalRule()
rules_unified_role_management_policy_rule1.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyApprovalRule'

rules_unified_role_management_policy_rule1.id = 'Approval_EndUser_Assignment'

rules_unified_role_management_policy_rule1target = UnifiedRoleManagementPolicyRuleTarget()
rules_unified_role_management_policy_rule1target.caller = 'EndUser'

rules_unified_role_management_policy_rule1target.Operations(['All', ])

rules_unified_role_management_policy_rule1target.level = 'Assignment'

rules_unified_role_management_policy_rule1target.InheritableSettings([])

rules_unified_role_management_policy_rule1target.EnforcedSettings([])


rules_unified_role_management_policy_rule1.target = rules_unified_role_management_policy_rule1target
rules_unified_role_management_policy_rule1setting = ApprovalSettings()
rules_unified_role_management_policy_rule1setting.is_approval_required = True

rules_unified_role_management_policy_rule1setting.is_approval_required_for_extension = False

rules_unified_role_management_policy_rule1setting.is_requestor_justification_required = True

rules_unified_role_management_policy_rule1setting.approval_mode = 'SingleStage'

approval_stages_approval_stage1 = ApprovalStage()
approval_stages_approval_stage1.ApprovalStageTimeOutInDays = 1

approval_stages_approval_stage1.is_approver_justification_required = True

approval_stages_approval_stage1.EscalationTimeInMinutes = 0

approval_stages_approval_stage1.is_escalation_enabled = False

primary_approvers_user_set1 = SingleUser()
primary_approvers_user_set1.@odata_type = '#microsoft.graph.singleUser'

primary_approvers_user_set1.is_backup = False

primary_approvers_user_set1.id = 'c277c8cb-6bb7-42e5-a17f-0add9a718151'

primary_approvers_user_set1.description=null


primaryApproversArray []= primaryApproversUserSet1;
approval_stages_approval_stage1.primaryapprovers(primaryApproversArray)


approval_stages_approval_stage1.EscalationApprovers([])


approvalStagesArray []= approvalStagesApprovalStage1;
rules_unified_role_management_policy_rule1setting.approvalstages(approvalStagesArray)



rules_unified_role_management_policy_rule1.setting = rules_unified_role_management_policy_rule1setting

rulesArray []= rulesUnifiedRoleManagementPolicyRule1;
rules_unified_role_management_policy_rule2 = UnifiedRoleManagementPolicyAuthenticationContextRule()
rules_unified_role_management_policy_rule2.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule'

rules_unified_role_management_policy_rule2.id = 'AuthenticationContext_EndUser_Assignment'

rules_unified_role_management_policy_rule2.is_enabled = False

rules_unified_role_management_policy_rule2.claim_value = ''

rules_unified_role_management_policy_rule2target = UnifiedRoleManagementPolicyRuleTarget()
rules_unified_role_management_policy_rule2target.caller = 'EndUser'

rules_unified_role_management_policy_rule2target.Operations(['All', ])

rules_unified_role_management_policy_rule2target.level = 'Assignment'

rules_unified_role_management_policy_rule2target.InheritableSettings([])

rules_unified_role_management_policy_rule2target.EnforcedSettings([])


rules_unified_role_management_policy_rule2.target = rules_unified_role_management_policy_rule2target

rulesArray []= rulesUnifiedRoleManagementPolicyRule2;
rules_unified_role_management_policy_rule3 = UnifiedRoleManagementPolicyEnablementRule()
rules_unified_role_management_policy_rule3.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyEnablementRule'

rules_unified_role_management_policy_rule3.id = 'Enablement_Admin_Eligibility'

rules_unified_role_management_policy_rule3.EnabledRules([])

rules_unified_role_management_policy_rule3target = UnifiedRoleManagementPolicyRuleTarget()
rules_unified_role_management_policy_rule3target.caller = 'Admin'

rules_unified_role_management_policy_rule3target.Operations(['All', ])

rules_unified_role_management_policy_rule3target.level = 'Eligibility'

rules_unified_role_management_policy_rule3target.InheritableSettings([])

rules_unified_role_management_policy_rule3target.EnforcedSettings([])


rules_unified_role_management_policy_rule3.target = rules_unified_role_management_policy_rule3target

rulesArray []= rulesUnifiedRoleManagementPolicyRule3;
rules_unified_role_management_policy_rule4 = UnifiedRoleManagementPolicyExpirationRule()
rules_unified_role_management_policy_rule4.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyExpirationRule'

rules_unified_role_management_policy_rule4.id = 'Expiration_Admin_Eligibility'

rules_unified_role_management_policy_rule4.is_expiration_required = True

rules_unified_role_management_policy_rule4.maximumduration =  \DateInterval('P365D')

rules_unified_role_management_policy_rule4target = UnifiedRoleManagementPolicyRuleTarget()
rules_unified_role_management_policy_rule4target.caller = 'Admin'

rules_unified_role_management_policy_rule4target.Operations(['All', ])

rules_unified_role_management_policy_rule4target.level = 'Eligibility'

rules_unified_role_management_policy_rule4target.InheritableSettings([])

rules_unified_role_management_policy_rule4target.EnforcedSettings([])


rules_unified_role_management_policy_rule4.target = rules_unified_role_management_policy_rule4target

rulesArray []= rulesUnifiedRoleManagementPolicyRule4;
rules_unified_role_management_policy_rule5 = UnifiedRoleManagementPolicyNotificationRule()
rules_unified_role_management_policy_rule5.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyNotificationRule'

rules_unified_role_management_policy_rule5.id = 'Notification_Admin_Admin_Eligibility'

rules_unified_role_management_policy_rule5.notification_type = 'Email'

rules_unified_role_management_policy_rule5.recipient_type = 'Admin'

rules_unified_role_management_policy_rule5.notification_level = 'All'

rules_unified_role_management_policy_rule5.is_default_recipients_enabled = True

rules_unified_role_management_policy_rule5.NotificationRecipients([])

rules_unified_role_management_policy_rule5target = UnifiedRoleManagementPolicyRuleTarget()
rules_unified_role_management_policy_rule5target.caller = 'Admin'

rules_unified_role_management_policy_rule5target.Operations(['All', ])

rules_unified_role_management_policy_rule5target.level = 'Eligibility'

rules_unified_role_management_policy_rule5target.InheritableSettings([])

rules_unified_role_management_policy_rule5target.EnforcedSettings([])


rules_unified_role_management_policy_rule5.target = rules_unified_role_management_policy_rule5target

rulesArray []= rulesUnifiedRoleManagementPolicyRule5;
request_body.rules(rulesArray)





result = await client.policies.role_management_policies.by_role_management_policie_id('unifiedRoleManagementPolicy-id').patch(request_body = request_body)


```