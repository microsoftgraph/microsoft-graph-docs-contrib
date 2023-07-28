---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.display_name = 'policy for external access requests'

request_body.description = 'policy for users from connected organizations to request access, with two stages of approval.'

request_body.allowedtargetscope(AllowedTargetScope.AllConfiguredConnectedOrganizationUsers('allowedtargetscope.allconfiguredconnectedorganizationusers'))

request_body.SpecificAllowedTargets([])

expiration = ExpirationPattern()
expiration.type(ExpirationPatternType.NoExpiration('expirationpatterntype.noexpiration'))


request_body.expiration = expiration
requestor_settings = AccessPackageAssignmentRequestorSettings()
requestor_settings.enable_targets_to_self_add_access = True

requestor_settings.enable_targets_to_self_update_access = True

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
stages_access_package_approval_stage1.durationbeforeautomaticdenial =  \DateInterval('P14D')

stages_access_package_approval_stage1.is_approver_justification_required = False

stages_access_package_approval_stage1.is_escalation_enabled = False

stages_access_package_approval_stage1.durationbeforeescalation =  \DateInterval('PT0S')

primary_approvers_subject_set1 = InternalSponsors()
primary_approvers_subject_set1.@odata_type = '#microsoft.graph.internalSponsors'


primaryApproversArray []= primaryApproversSubjectSet1;
stages_access_package_approval_stage1.primaryapprovers(primaryApproversArray)


fallback_primary_approvers_subject_set1 = SingleUser()
fallback_primary_approvers_subject_set1.@odata_type = '#microsoft.graph.singleUser'

fallback_primary_approvers_subject_set1.user_id = '7deff43e-1f17-44ef-9e5f-d516b0ba11d4'


fallbackPrimaryApproversArray []= fallbackPrimaryApproversSubjectSet1;
fallback_primary_approvers_subject_set2 = GroupMembers()
fallback_primary_approvers_subject_set2.@odata_type = '#microsoft.graph.groupMembers'

fallback_primary_approvers_subject_set2.group_id = '1623f912-5e86-41c2-af47-39dd67582b66'


fallbackPrimaryApproversArray []= fallbackPrimaryApproversSubjectSet2;
stages_access_package_approval_stage1.fallbackprimaryapprovers(fallbackPrimaryApproversArray)


stages_access_package_approval_stage1.EscalationApprovers([])

stages_access_package_approval_stage1.FallbackEscalationApprovers([])


stagesArray []= stagesAccessPackageApprovalStage1;
stages_access_package_approval_stage2 = AccessPackageApprovalStage()
stages_access_package_approval_stage2.durationbeforeautomaticdenial =  \DateInterval('P14D')

stages_access_package_approval_stage2.is_approver_justification_required = False

stages_access_package_approval_stage2.is_escalation_enabled = False

stages_access_package_approval_stage2.durationbeforeescalation =  \DateInterval('PT0S')

stages_access_package_approval_stage2.PrimaryApprovers([])

fallback_primary_approvers_subject_set1 = SingleUser()
fallback_primary_approvers_subject_set1.@odata_type = '#microsoft.graph.singleUser'

fallback_primary_approvers_subject_set1.user_id = '46184453-e63b-4f20-86c2-c557ed5d5df9'


fallbackPrimaryApproversArray []= fallbackPrimaryApproversSubjectSet1;
fallback_primary_approvers_subject_set2 = GroupMembers()
fallback_primary_approvers_subject_set2.@odata_type = '#microsoft.graph.groupMembers'

fallback_primary_approvers_subject_set2.group_id = '1623f912-5e86-41c2-af47-39dd67582b66'


fallbackPrimaryApproversArray []= fallbackPrimaryApproversSubjectSet2;
stages_access_package_approval_stage2.fallbackprimaryapprovers(fallbackPrimaryApproversArray)


stages_access_package_approval_stage2.EscalationApprovers([])

stages_access_package_approval_stage2.FallbackEscalationApprovers([])


stagesArray []= stagesAccessPackageApprovalStage2;
request_approval_settings.stages(stagesArray)



request_body.request_approval_settings = request_approval_settings
review_settings = AccessPackageAssignmentReviewSettings()
review_settings.is_enabled = True

review_settings.expirationbehavior(AccessReviewExpirationBehavior.KeepAccess('accessreviewexpirationbehavior.keepaccess'))

review_settings.is_recommendation_enabled = True

review_settings.is_reviewer_justification_required = True

review_settings.is_self_review = False

review_settingsschedule = EntitlementManagementSchedule()
review_settingsschedule.startDateTime = DateTime('2022-07-02T06:59:59.998Z')

review_settingsscheduleexpiration = ExpirationPattern()
review_settingsscheduleexpiration.duration =  \DateInterval('P14D')

review_settingsscheduleexpiration.type(ExpirationPatternType.AfterDuration('expirationpatterntype.afterduration'))


review_settingsschedule.expiration = review_settingsscheduleexpiration
review_settingsschedulerecurrence = PatternedRecurrence()
review_settingsschedulerecurrencepattern = RecurrencePattern()
review_settingsschedulerecurrencepattern.type(RecurrencePatternType.AbsoluteMonthly('recurrencepatterntype.absolutemonthly'))

review_settingsschedulerecurrencepattern.Interval = 3

review_settingsschedulerecurrencepattern.Month = 0

review_settingsschedulerecurrencepattern.DayOfMonth = 0

review_settingsschedulerecurrencepattern.DaysOfWeek([])


review_settingsschedulerecurrence.pattern = review_settingsschedulerecurrencepattern
review_settingsschedulerecurrencerange = RecurrenceRange()
review_settingsschedulerecurrencerange.type(RecurrenceRangeType.NoEnd('recurrencerangetype.noend'))

review_settingsschedulerecurrencerange.NumberOfOccurrences = 0


review_settingsschedulerecurrence.range = review_settingsschedulerecurrencerange

review_settingsschedule.recurrence = review_settingsschedulerecurrence

review_settings.schedule = review_settingsschedule
primary_reviewers_subject_set1 = GroupMembers()
primary_reviewers_subject_set1.@odata_type = '#microsoft.graph.groupMembers'

primary_reviewers_subject_set1.group_id = '1623f912-5e86-41c2-af47-39dd67582b66'


primaryReviewersArray []= primaryReviewersSubjectSet1;
review_settings.primaryreviewers(primaryReviewersArray)


review_settings.FallbackReviewers([])


request_body.review_settings = review_settings
access_package = AccessPackage()
access_package.id = 'a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b'


request_body.access_package = access_package



result = await client.identity_governance.entitlement_management.assignment_policies.post(request_body = request_body)


```