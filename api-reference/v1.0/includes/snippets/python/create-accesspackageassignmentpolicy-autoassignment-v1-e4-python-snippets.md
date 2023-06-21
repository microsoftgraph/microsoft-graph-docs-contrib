---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.display_name = 'A Policy With Questions'

request_body.description = ''

request_body.allowedtargetscope(AllowedTargetScope.AllMemberUsers('allowedtargetscope.allmemberusers'))

expiration = ExpirationPattern()
expiration.type(ExpirationPatternType.NoExpiration('expirationpatterntype.noexpiration'))


request_body.expiration = expiration
requestor_settings = AccessPackageAssignmentRequestorSettings()
requestor_settings.enable_targets_to_self_add_access = True

requestor_settings.enable_targets_to_self_update_access = True

requestor_settings.enable_targets_to_self_remove_access = True


request_body.requestor_settings = requestor_settings
request_approval_settings = AccessPackageAssignmentApprovalSettings()
request_approval_settings.is_approval_required_for_add = True

request_approval_settings.is_approval_required_for_update = True

stages_access_package_approval_stage1 = AccessPackageApprovalStage()
stages_access_package_approval_stage1.durationbeforeautomaticdenial =  \DateInterval('P7D')

stages_access_package_approval_stage1.is_approver_justification_required = False

stages_access_package_approval_stage1.is_escalation_enabled = False

stages_access_package_approval_stage1.FallbackPrimaryApprovers([])

stages_access_package_approval_stage1.EscalationApprovers([])

stages_access_package_approval_stage1.FallbackEscalationApprovers([])

primary_approvers_subject_set1 = SingleUser()
primary_approvers_subject_set1.@odata_type = '#microsoft.graph.singleUser'

primary_approvers_subject_set1.user_id = '08a551cb-575a-4343-b914-f6e42798bd20'


primaryApproversArray []= primaryApproversSubjectSet1;
stages_access_package_approval_stage1.primaryapprovers(primaryApproversArray)



stagesArray []= stagesAccessPackageApprovalStage1;
request_approval_settings.stages(stagesArray)



request_body.request_approval_settings = request_approval_settings
questions_access_package_question1 = AccessPackageMultipleChoiceQuestion()
questions_access_package_question1.@odata_type = '#microsoft.graph.accessPackageMultipleChoiceQuestion'

questions_access_package_question1.Sequence = 1

questions_access_package_question1.is_required = True

questions_access_package_question1.is_answer_editable = True

questions_access_package_question1.text = 'What country are you working from?'

questions_access_package_question1.is_multiple_selection_allowed = False

choices_access_package_answer_choice1 = AccessPackageAnswerChoice()
choices_access_package_answer_choice1.@odata_type = 'microsoft.graph.accessPackageAnswerChoice'

choices_access_package_answer_choice1.actual_value = 'KE'

choices_access_package_answer_choice1.text = 'Kenya'


choicesArray []= choicesAccessPackageAnswerChoice1;
choices_access_package_answer_choice2 = AccessPackageAnswerChoice()
choices_access_package_answer_choice2.@odata_type = 'microsoft.graph.accessPackageAnswerChoice'

choices_access_package_answer_choice2.actual_value = 'US'

choices_access_package_answer_choice2.text = 'United States'


choicesArray []= choicesAccessPackageAnswerChoice2;
choices_access_package_answer_choice3 = AccessPackageAnswerChoice()
choices_access_package_answer_choice3.@odata_type = 'microsoft.graph.accessPackageAnswerChoice'

choices_access_package_answer_choice3.actual_value = 'GY'

choices_access_package_answer_choice3.text = 'Guyana'


choicesArray []= choicesAccessPackageAnswerChoice3;
choices_access_package_answer_choice4 = AccessPackageAnswerChoice()
choices_access_package_answer_choice4.@odata_type = 'microsoft.graph.accessPackageAnswerChoice'

choices_access_package_answer_choice4.actual_value = 'BD'

choices_access_package_answer_choice4.text = 'Bangladesh'


choicesArray []= choicesAccessPackageAnswerChoice4;
choices_access_package_answer_choice5 = AccessPackageAnswerChoice()
choices_access_package_answer_choice5.@odata_type = 'microsoft.graph.accessPackageAnswerChoice'

choices_access_package_answer_choice5.actual_value = 'JP'

choices_access_package_answer_choice5.text = 'Japan'


choicesArray []= choicesAccessPackageAnswerChoice5;
questions_access_package_question1.choices(choicesArray)



questionsArray []= questionsAccessPackageQuestion1;
questions_access_package_question2 = AccessPackageTextInputQuestion()
questions_access_package_question2.@odata_type = '#microsoft.graph.accessPackageTextInputQuestion'

questions_access_package_question2.Sequence = 2

questions_access_package_question2.is_required = True

questions_access_package_question2.is_answer_editable = True

questions_access_package_question2.text = 'What do you do for work?'

localizations_access_package_localized_text1 = AccessPackageLocalizedText()
localizations_access_package_localized_text1.language_code = 'fr-CA'

localizations_access_package_localized_text1.text = 'Que fais-tu comme travail?'


localizationsArray []= localizationsAccessPackageLocalizedText1;
questions_access_package_question2.localizations(localizationsArray)


questions_access_package_question2.is_single_line_question = False

questions_access_package_question2.regex_pattern = '[a-zA-Z]+[a-zA-Z\s]*'


questionsArray []= questionsAccessPackageQuestion2;
request_body.questions(questionsArray)


access_package = AccessPackage()
access_package.id = '977c7ff4-ef8f-4910-9d31-49048ddf3120'


request_body.access_package = access_package



result = await client.identity_governance.entitlement_management.assignment_policies.post(request_body = request_body)


```