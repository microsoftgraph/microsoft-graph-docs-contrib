---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setAccessPackageId("b2eba9a1-b357-42ee-83a8-336522ed6cbf");
accessPackageAssignmentPolicy.setDisplayName("Users from connected organizations can request");
accessPackageAssignmentPolicy.setDescription("Allow users from configured connected organizations to request and be approved by their sponsors");
accessPackageAssignmentPolicy.setCanExtend(false);
accessPackageAssignmentPolicy.setDurationInDays(365);
accessPackageAssignmentPolicy.setExpirationDateTime(null);
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.setScopeType("AllExistingConnectedOrganizationSubjects");
requestorSettings.setAcceptRequests(true);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
requestApprovalSettings.setIsApprovalRequired(true);
requestApprovalSettings.setIsApprovalRequiredForExtension(false);
requestApprovalSettings.setIsRequestorJustificationRequired(true);
requestApprovalSettings.setApprovalMode("SingleStage");
LinkedList<ApprovalStage> approvalStages = new LinkedList<ApprovalStage>();
ApprovalStage approvalStage = new ApprovalStage();
approvalStage.setApprovalStageTimeOutInDays(14);
approvalStage.setIsApproverJustificationRequired(true);
approvalStage.setIsEscalationEnabled(false);
approvalStage.setEscalationTimeInMinutes(11520);
LinkedList<UserSet> primaryApprovers = new LinkedList<UserSet>();
GroupMembers userSet = new GroupMembers();
userSet.setOdataType("#microsoft.graph.groupMembers");
userSet.setIsBackup(true);
userSet.setId("d2dcb9a1-a445-42ee-83a8-476522ed6cbf");
userSet.setDescription("group for users from connected organizations which have no external sponsor");
primaryApprovers.add(userSet);
ExternalSponsors userSet1 = new ExternalSponsors();
userSet1.setOdataType("#microsoft.graph.externalSponsors");
userSet1.setIsBackup(false);
primaryApprovers.add(userSet1);
approvalStage.setPrimaryApprovers(primaryApprovers);
approvalStages.add(approvalStage);
requestApprovalSettings.setApprovalStages(approvalStages);
accessPackageAssignmentPolicy.setRequestApprovalSettings(requestApprovalSettings);
LinkedList<AccessPackageQuestion> questions = new LinkedList<AccessPackageQuestion>();
AccessPackageMultipleChoiceQuestion accessPackageQuestion = new AccessPackageMultipleChoiceQuestion();
accessPackageQuestion.setIsRequired(false);
AccessPackageLocalizedContent text = new AccessPackageLocalizedContent();
text.setDefaultText("what state are you from?");
LinkedList<AccessPackageLocalizedText> localizedTexts = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText accessPackageLocalizedText = new AccessPackageLocalizedText();
accessPackageLocalizedText.setText("¿De qué estado eres?");
accessPackageLocalizedText.setLanguageCode("es");
localizedTexts.add(accessPackageLocalizedText);
text.setLocalizedTexts(localizedTexts);
accessPackageQuestion.setText(text);
accessPackageQuestion.setOdataType("#microsoft.graph.accessPackageMultipleChoiceQuestion");
LinkedList<AccessPackageAnswerChoice> choices = new LinkedList<AccessPackageAnswerChoice>();
AccessPackageAnswerChoice accessPackageAnswerChoice = new AccessPackageAnswerChoice();
accessPackageAnswerChoice.setActualValue("AZ");
AccessPackageLocalizedContent displayValue = new AccessPackageLocalizedContent();
LinkedList<AccessPackageLocalizedText> localizedTexts1 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText accessPackageLocalizedText1 = new AccessPackageLocalizedText();
accessPackageLocalizedText1.setText("Arizona");
accessPackageLocalizedText1.setLanguageCode("es");
localizedTexts1.add(accessPackageLocalizedText1);
displayValue.setLocalizedTexts(localizedTexts1);
accessPackageAnswerChoice.setDisplayValue(displayValue);
choices.add(accessPackageAnswerChoice);
AccessPackageAnswerChoice accessPackageAnswerChoice1 = new AccessPackageAnswerChoice();
accessPackageAnswerChoice1.setActualValue("CA");
AccessPackageLocalizedContent displayValue1 = new AccessPackageLocalizedContent();
LinkedList<AccessPackageLocalizedText> localizedTexts2 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText accessPackageLocalizedText2 = new AccessPackageLocalizedText();
accessPackageLocalizedText2.setText("California");
accessPackageLocalizedText2.setLanguageCode("es");
localizedTexts2.add(accessPackageLocalizedText2);
displayValue1.setLocalizedTexts(localizedTexts2);
accessPackageAnswerChoice1.setDisplayValue(displayValue1);
choices.add(accessPackageAnswerChoice1);
AccessPackageAnswerChoice accessPackageAnswerChoice2 = new AccessPackageAnswerChoice();
accessPackageAnswerChoice2.setActualValue("OH");
AccessPackageLocalizedContent displayValue2 = new AccessPackageLocalizedContent();
LinkedList<AccessPackageLocalizedText> localizedTexts3 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText accessPackageLocalizedText3 = new AccessPackageLocalizedText();
accessPackageLocalizedText3.setText("Ohio");
accessPackageLocalizedText3.setLanguageCode("es");
localizedTexts3.add(accessPackageLocalizedText3);
displayValue2.setLocalizedTexts(localizedTexts3);
accessPackageAnswerChoice2.setDisplayValue(displayValue2);
choices.add(accessPackageAnswerChoice2);
accessPackageQuestion.setChoices(choices);
accessPackageQuestion.setAllowsMultipleSelection(false);
questions.add(accessPackageQuestion);
AccessPackageTextInputQuestion accessPackageQuestion1 = new AccessPackageTextInputQuestion();
accessPackageQuestion1.setIsRequired(false);
AccessPackageLocalizedContent text5 = new AccessPackageLocalizedContent();
text5.setDefaultText("Who is your manager?");
LinkedList<AccessPackageLocalizedText> localizedTexts4 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText accessPackageLocalizedText4 = new AccessPackageLocalizedText();
accessPackageLocalizedText4.setText("por qué necesita acceso a este paquete");
accessPackageLocalizedText4.setLanguageCode("es");
localizedTexts4.add(accessPackageLocalizedText4);
text5.setLocalizedTexts(localizedTexts4);
accessPackageQuestion1.setText(text5);
accessPackageQuestion1.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
accessPackageQuestion1.setIsSingleLineQuestion(false);
questions.add(accessPackageQuestion1);
accessPackageAssignmentPolicy.setQuestions(questions);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies().post(accessPackageAssignmentPolicy);


```