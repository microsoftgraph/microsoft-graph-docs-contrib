---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.id = '87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187'

request_body.display_name = 'All Users'

request_body.description = 'All users can request for access to the directory.'

request_body.allowedtargetscope(AllowedTargetScope.AllDirectoryUsers('allowedtargetscope.alldirectoryusers'))

request_body.automaticRequestSettings=null

request_body.SpecificAllowedTargets([])

expiration = ExpirationPattern()
expiration.type(ExpirationPatternType.NoExpiration('expirationpatterntype.noexpiration'))


request_body.expiration = expiration
requestor_settings = AccessPackageAssignmentRequestorSettings()
requestor_settings.enable_targets_to_self_add_access = True

requestor_settings.enable_targets_to_self_update_access = False

requestor_settings.enable_targets_to_self_remove_access = True

requestor_settings.allow_custom_assignment_schedule = False

requestor_settings.enable_on_behalf_requestors_to_add_access = False

requestor_settings.enable_on_behalf_requestors_to_update_access = False

requestor_settings.enable_on_behalf_requestors_to_remove_access = False

requestor_settings.OnBehalfRequestors([])


request_body.requestor_settings = requestor_settings
request_approval_settings = AccessPackageAssignmentApprovalSettings()
request_approval_settings.is_approval_required_for_add = True

request_approval_settings.is_approval_required_for_update = False

stages_access_package_approval_stage1 = AccessPackageApprovalStage()
stages_access_package_approval_stage1.durationbeforeautomaticdenial =  \DateInterval('P2D')

stages_access_package_approval_stage1.is_approver_justification_required = False

stages_access_package_approval_stage1.is_escalation_enabled = False

stages_access_package_approval_stage1.durationbeforeescalation =  \DateInterval('PT0S')

primary_approvers_subject_set1 = RequestorManager()
primary_approvers_subject_set1.@odata_type = '#microsoft.graph.requestorManager'

primary_approvers_subject_set1.ManagerLevel = 1


primaryApproversArray []= primaryApproversSubjectSet1;
stages_access_package_approval_stage1.primaryapprovers(primaryApproversArray)


fallback_primary_approvers_subject_set1 = SingleUser()
fallback_primary_approvers_subject_set1.@odata_type = '#microsoft.graph.singleUser'

fallback_primary_approvers_subject_set1.user_id = 'e6bf4d7d-6824-4dd0-809d-5bf42d4817c2'

fallback_primary_approvers_subject_set1.description = 'user'


fallbackPrimaryApproversArray []= fallbackPrimaryApproversSubjectSet1;
stages_access_package_approval_stage1.fallbackprimaryapprovers(fallbackPrimaryApproversArray)


stages_access_package_approval_stage1.EscalationApprovers([])

stages_access_package_approval_stage1.FallbackEscalationApprovers([])


stagesArray []= stagesAccessPackageApprovalStage1;
request_approval_settings.stages(stagesArray)



request_body.request_approval_settings = request_approval_settings
access_package = AccessPackage()
access_package.id = '49d2c59b-0a81-463d-a8ec-ddad3935d8a0'


request_body.access_package = access_package



result = await client.identity_governance.entitlement_management.assignment_policies.by_assignment_policie_id('accessPackageAssignmentPolicy-id').put(request_body = request_body)


```