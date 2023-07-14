---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleManagementPolicyApprovalRule()
request_body.@odata_type = '#microsoft.graph.unifiedRoleManagementPolicyApprovalRule'

request_body.id = 'Approval_EndUser_Assignment'

target = UnifiedRoleManagementPolicyRuleTarget()
target.@odata_type = 'microsoft.graph.unifiedRoleManagementPolicyRuleTarget'

target.caller = 'EndUser'

target.Operations([target.unifiedrolemanagementpolicyruletargetoperations(UnifiedRoleManagementPolicyRuleTargetOperations.All('unifiedrolemanagementpolicyruletargetoperations.all'))
])

target.level = 'Assignment'

target.InheritableSettings([])

target.EnforcedSettings([])


request_body.target = target
setting = ApprovalSettings()
setting.@odata_type = 'microsoft.graph.approvalSettings'

setting.is_approval_required = True

setting.is_approval_required_for_extension = False

setting.is_requestor_justification_required = True

setting.approval_mode = 'SingleStage'

approval_stages_unified_approval_stage1 = UnifiedApprovalStage()
approval_stages_unified_approval_stage1.@odata_type = 'microsoft.graph.unifiedApprovalStage'

approval_stages_unified_approval_stage1.ApprovalStageTimeOutInDays = 1

approval_stages_unified_approval_stage1.is_approver_justification_required = True

approval_stages_unified_approval_stage1.EscalationTimeInMinutes = 0

primary_approvers_subject_set1 = SingleUser()
primary_approvers_subject_set1.@odata_type = '#microsoft.graph.singleUser'

primary_approvers_subject_set1.user_id = '10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6'


primaryApproversArray []= primaryApproversSubjectSet1;
primary_approvers_subject_set2 = GroupMembers()
primary_approvers_subject_set2.@odata_type = '#microsoft.graph.groupMembers'

primary_approvers_subject_set2.group_id = '14f2746d-7d6f-4ac6-acd8-8cac318b041b'


primaryApproversArray []= primaryApproversSubjectSet2;
approval_stages_unified_approval_stage1.primaryapprovers(primaryApproversArray)


approval_stages_unified_approval_stage1.is_escalation_enabled = False

approval_stages_unified_approval_stage1.EscalationApprovers([])


approvalStagesArray []= approvalStagesUnifiedApprovalStage1;
setting.approvalstages(approvalStagesArray)



request_body.setting = setting



result = await client.policies.role_management_policies.by_role_management_policie_id('unifiedRoleManagementPolicy-id').rules.by_rule_id('unifiedRoleManagementPolicyRule-id').patch(request_body = request_body)


```