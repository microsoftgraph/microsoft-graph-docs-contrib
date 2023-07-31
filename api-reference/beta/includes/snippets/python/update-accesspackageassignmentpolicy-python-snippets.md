---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.id = 'b2eba9a1-b357-42ee-83a8-336522ed6cbf'

request_body.access_package_id = '4c02f928-7752-49aa-8fc8-e286d973a965'

request_body.display_name = 'All Users'

request_body.description = 'All users can request for access to the directory.'

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

request_approval_settings.approval_mode = 'SingleStage'

approval_stages_approval_stage1 = ApprovalStage()
approval_stages_approval_stage1.ApprovalStageTimeOutInDays = 14

approval_stages_approval_stage1.is_approver_justification_required = True

approval_stages_approval_stage1.is_escalation_enabled = False

approval_stages_approval_stage1.EscalationTimeInMinutes = 11520

primary_approvers_user_set1 = GroupMembers()
primary_approvers_user_set1.@odata_type = '#microsoft.graph.groupMembers'

primary_approvers_user_set1.is_backup = True

primary_approvers_user_set1.id = 'd2dcb9a1-a445-42ee-83a8-476522ed6cbf'

primary_approvers_user_set1.description = 'group for users from connected organizations which have no external sponsor'


primaryApproversArray []= primaryApproversUserSet1;
primary_approvers_user_set2 = ExternalSponsors()
primary_approvers_user_set2.@odata_type = '#microsoft.graph.externalSponsors'

primary_approvers_user_set2.is_backup = False


primaryApproversArray []= primaryApproversUserSet2;
approval_stages_approval_stage1.primaryapprovers(primaryApproversArray)



approvalStagesArray []= approvalStagesApprovalStage1;
request_approval_settings.approvalstages(approvalStagesArray)



request_body.request_approval_settings = request_approval_settings
questions_access_package_question1 = AccessPackageMultipleChoiceQuestion()
questions_access_package_question1.is_required = False

questions_access_package_question1text = AccessPackageLocalizedContent()
questions_access_package_question1text.default_text = 'what state are you from?'

localized_texts_access_package_localized_text1 = AccessPackageLocalizedText()
localized_texts_access_package_localized_text1.text = '¿De qué estado eres?'

localized_texts_access_package_localized_text1.language_code = 'es'


localizedTextsArray []= localizedTextsAccessPackageLocalizedText1;
questions_access_package_question1text.localizedtexts(localizedTextsArray)



questions_access_package_question1.text = questions_access_package_question1text
questions_access_package_question1.@odata_type = '#microsoft.graph.accessPackageMultipleChoiceQuestion'

choices_access_package_answer_choice1 = AccessPackageAnswerChoice()
choices_access_package_answer_choice1.actual_value = 'AZ'

choices_access_package_answer_choice1display_value = AccessPackageLocalizedContent()
localized_texts_access_package_localized_text1 = AccessPackageLocalizedText()
localized_texts_access_package_localized_text1.text = 'Arizona'

localized_texts_access_package_localized_text1.language_code = 'es'


localizedTextsArray []= localizedTextsAccessPackageLocalizedText1;
choices_access_package_answer_choice1display_value.localizedtexts(localizedTextsArray)



choices_access_package_answer_choice1.display_value = choices_access_package_answer_choice1display_value

choicesArray []= choicesAccessPackageAnswerChoice1;
choices_access_package_answer_choice2 = AccessPackageAnswerChoice()
choices_access_package_answer_choice2.actual_value = 'CA'

choices_access_package_answer_choice2display_value = AccessPackageLocalizedContent()
localized_texts_access_package_localized_text1 = AccessPackageLocalizedText()
localized_texts_access_package_localized_text1.text = 'California'

localized_texts_access_package_localized_text1.language_code = 'es'


localizedTextsArray []= localizedTextsAccessPackageLocalizedText1;
choices_access_package_answer_choice2display_value.localizedtexts(localizedTextsArray)



choices_access_package_answer_choice2.display_value = choices_access_package_answer_choice2display_value

choicesArray []= choicesAccessPackageAnswerChoice2;
questions_access_package_question1.choices(choicesArray)


questions_access_package_question1.allows_multiple_selection = False


questionsArray []= questionsAccessPackageQuestion1;
questions_access_package_question2 = AccessPackageTextInputQuestion()
questions_access_package_question2.is_required = False

questions_access_package_question2text = AccessPackageLocalizedContent()
questions_access_package_question2text.default_text = 'Who is your manager?'

localized_texts_access_package_localized_text1 = AccessPackageLocalizedText()
localized_texts_access_package_localized_text1.text = 'por qué necesita acceso a este paquete'

localized_texts_access_package_localized_text1.language_code = 'es'


localizedTextsArray []= localizedTextsAccessPackageLocalizedText1;
questions_access_package_question2text.localizedtexts(localizedTextsArray)



questions_access_package_question2.text = questions_access_package_question2text
questions_access_package_question2.@odata_type = '#microsoft.graph.accessPackageTextInputQuestion'

questions_access_package_question2.is_single_line_question = False


questionsArray []= questionsAccessPackageQuestion2;
request_body.questions(questionsArray)





result = await client.identity_governance.entitlement_management.acce_package_assignment_policies.by_acces_package_assignment_policie_id('accessPackageAssignmentPolicy-id').put(request_body = request_body)


```