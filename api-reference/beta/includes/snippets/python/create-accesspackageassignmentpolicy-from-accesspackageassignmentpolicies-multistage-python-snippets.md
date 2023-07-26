---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.access_package_id = 'string (identifier)'

request_body.display_name = 'Users from connected organizations can request'

request_body.description = 'Allow users from configured connected organizations to request and be approved by their sponsors'

request_body.can_extend = False

request_body.DurationInDays = 365

request_body.expirationDateTime=null

requestor_settings = RequestorSettings()
requestor_settings.scope_type = 'AllExistingConnectedOrganizationSubjects'

requestor_settings.accept_requests = True

requestor_settings.AllowedRequestors([])


request_body.requestor_settings = requestor_settings
request_approval_settings = ApprovalSettings()
request_approval_settings.is_approval_required = True

request_approval_settings.is_approval_required_for_extension = False

request_approval_settings.is_requestor_justification_required = True

request_approval_settings.approval_mode = 'Serial'

approval_stages_approval_stage1 = ApprovalStage()
approval_stages_approval_stage1.ApprovalStageTimeOutInDays = 14

approval_stages_approval_stage1.is_approver_justification_required = True

approval_stages_approval_stage1.is_escalation_enabled = True

approval_stages_approval_stage1.EscalationTimeInMinutes = 11520

primary_approvers_user_set1 = GroupMembers()
primary_approvers_user_set1.@odata_type = '#microsoft.graph.groupMembers'

primary_approvers_user_set1.is_backup = True

primary_approvers_user_set1.id = 'string (identifier)'

primary_approvers_user_set1.description = 'group for users from connected organizations which have no external sponsor'


primaryApproversArray []= primaryApproversUserSet1;
primary_approvers_user_set2 = ExternalSponsors()
primary_approvers_user_set2.@odata_type = '#microsoft.graph.externalSponsors'

primary_approvers_user_set2.is_backup = False


primaryApproversArray []= primaryApproversUserSet2;
approval_stages_approval_stage1.primaryapprovers(primaryApproversArray)


escalation_approvers_user_set1 = SingleUser()
escalation_approvers_user_set1.@odata_type = '#microsoft.graph.singleUser'

escalation_approvers_user_set1.is_backup = True

escalation_approvers_user_set1.id = 'string (identifier)'

escalation_approvers_user_set1.description = 'user if the external sponsor does not respond'


escalationApproversArray []= escalationApproversUserSet1;
approval_stages_approval_stage1.escalationapprovers(escalationApproversArray)



approvalStagesArray []= approvalStagesApprovalStage1;
approval_stages_approval_stage2 = ApprovalStage()
approval_stages_approval_stage2.ApprovalStageTimeOutInDays = 14

approval_stages_approval_stage2.is_approver_justification_required = True

approval_stages_approval_stage2.is_escalation_enabled = True

approval_stages_approval_stage2.EscalationTimeInMinutes = 11520

primary_approvers_user_set1 = GroupMembers()
primary_approvers_user_set1.@odata_type = '#microsoft.graph.groupMembers'

primary_approvers_user_set1.is_backup = True

primary_approvers_user_set1.id = 'string (identifier)'

primary_approvers_user_set1.description = 'group for users from connected organizations which have no internal sponsor'


primaryApproversArray []= primaryApproversUserSet1;
primary_approvers_user_set2 = InternalSponsors()
primary_approvers_user_set2.@odata_type = '#microsoft.graph.internalSponsors'

primary_approvers_user_set2.is_backup = False


primaryApproversArray []= primaryApproversUserSet2;
approval_stages_approval_stage2.primaryapprovers(primaryApproversArray)


escalation_approvers_user_set1 = SingleUser()
escalation_approvers_user_set1.@odata_type = '#microsoft.graph.singleUser'

escalation_approvers_user_set1.is_backup = True

escalation_approvers_user_set1.id = 'string (identifier)'

escalation_approvers_user_set1.description = 'user if the internal sponsor does not respond'


escalationApproversArray []= escalationApproversUserSet1;
approval_stages_approval_stage2.escalationapprovers(escalationApproversArray)



approvalStagesArray []= approvalStagesApprovalStage2;
request_approval_settings.approvalstages(approvalStagesArray)



request_body.request_approval_settings = request_approval_settings
access_review_settings = AssignmentReviewSettings()
access_review_settings.is_enabled = True

access_review_settings.recurrence_type = 'quarterly'

access_review_settings.reviewer_type = 'Self'

access_review_settings.startDateTime = DateTime('2020-04-01T07:59:59.998Z')

access_review_settings.DurationInDays = 25

access_review_settings.Reviewers([])


request_body.access_review_settings = access_review_settings



result = await client.identity_governance.entitlement_management.acces_package_assignment_policies.post(request_body = request_body)


```