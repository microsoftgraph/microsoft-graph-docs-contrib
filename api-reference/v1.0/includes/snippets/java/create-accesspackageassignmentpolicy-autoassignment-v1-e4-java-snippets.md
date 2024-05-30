---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("A Policy With Questions");
accessPackageAssignmentPolicy.setDescription("");
accessPackageAssignmentPolicy.setAllowedTargetScope(AllowedTargetScope.AllMemberUsers);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.NoExpiration);
accessPackageAssignmentPolicy.setExpiration(expiration);
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
requestorSettings.setEnableTargetsToSelfAddAccess(true);
requestorSettings.setEnableTargetsToSelfUpdateAccess(true);
requestorSettings.setEnableTargetsToSelfRemoveAccess(true);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
AccessPackageAssignmentApprovalSettings requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
requestApprovalSettings.setIsApprovalRequiredForAdd(true);
requestApprovalSettings.setIsApprovalRequiredForUpdate(true);
LinkedList<AccessPackageApprovalStage> stages = new LinkedList<AccessPackageApprovalStage>();
AccessPackageApprovalStage accessPackageApprovalStage = new AccessPackageApprovalStage();
PeriodAndDuration durationBeforeAutomaticDenial = PeriodAndDuration.ofDuration(Duration.parse("P7D"));
accessPackageApprovalStage.setDurationBeforeAutomaticDenial(durationBeforeAutomaticDenial);
accessPackageApprovalStage.setIsApproverJustificationRequired(false);
accessPackageApprovalStage.setIsEscalationEnabled(false);
LinkedList<SubjectSet> fallbackPrimaryApprovers = new LinkedList<SubjectSet>();
accessPackageApprovalStage.setFallbackPrimaryApprovers(fallbackPrimaryApprovers);
LinkedList<SubjectSet> escalationApprovers = new LinkedList<SubjectSet>();
accessPackageApprovalStage.setEscalationApprovers(escalationApprovers);
LinkedList<SubjectSet> fallbackEscalationApprovers = new LinkedList<SubjectSet>();
accessPackageApprovalStage.setFallbackEscalationApprovers(fallbackEscalationApprovers);
LinkedList<SubjectSet> primaryApprovers = new LinkedList<SubjectSet>();
SingleUser subjectSet = new SingleUser();
subjectSet.setOdataType("#microsoft.graph.singleUser");
subjectSet.setUserId("08a551cb-575a-4343-b914-f6e42798bd20");
primaryApprovers.add(subjectSet);
accessPackageApprovalStage.setPrimaryApprovers(primaryApprovers);
stages.add(accessPackageApprovalStage);
requestApprovalSettings.setStages(stages);
accessPackageAssignmentPolicy.setRequestApprovalSettings(requestApprovalSettings);
LinkedList<AccessPackageQuestion> questions = new LinkedList<AccessPackageQuestion>();
AccessPackageMultipleChoiceQuestion accessPackageQuestion = new AccessPackageMultipleChoiceQuestion();
accessPackageQuestion.setOdataType("#microsoft.graph.accessPackageMultipleChoiceQuestion");
accessPackageQuestion.setSequence(1);
accessPackageQuestion.setIsRequired(true);
accessPackageQuestion.setIsAnswerEditable(true);
accessPackageQuestion.setText("What country are you working from?");
accessPackageQuestion.setIsMultipleSelectionAllowed(false);
LinkedList<AccessPackageAnswerChoice> choices = new LinkedList<AccessPackageAnswerChoice>();
AccessPackageAnswerChoice accessPackageAnswerChoice = new AccessPackageAnswerChoice();
accessPackageAnswerChoice.setOdataType("microsoft.graph.accessPackageAnswerChoice");
accessPackageAnswerChoice.setActualValue("KE");
accessPackageAnswerChoice.setText("Kenya");
choices.add(accessPackageAnswerChoice);
AccessPackageAnswerChoice accessPackageAnswerChoice1 = new AccessPackageAnswerChoice();
accessPackageAnswerChoice1.setOdataType("microsoft.graph.accessPackageAnswerChoice");
accessPackageAnswerChoice1.setActualValue("US");
accessPackageAnswerChoice1.setText("United States");
choices.add(accessPackageAnswerChoice1);
AccessPackageAnswerChoice accessPackageAnswerChoice2 = new AccessPackageAnswerChoice();
accessPackageAnswerChoice2.setOdataType("microsoft.graph.accessPackageAnswerChoice");
accessPackageAnswerChoice2.setActualValue("GY");
accessPackageAnswerChoice2.setText("Guyana");
choices.add(accessPackageAnswerChoice2);
AccessPackageAnswerChoice accessPackageAnswerChoice3 = new AccessPackageAnswerChoice();
accessPackageAnswerChoice3.setOdataType("microsoft.graph.accessPackageAnswerChoice");
accessPackageAnswerChoice3.setActualValue("BD");
accessPackageAnswerChoice3.setText("Bangladesh");
choices.add(accessPackageAnswerChoice3);
AccessPackageAnswerChoice accessPackageAnswerChoice4 = new AccessPackageAnswerChoice();
accessPackageAnswerChoice4.setOdataType("microsoft.graph.accessPackageAnswerChoice");
accessPackageAnswerChoice4.setActualValue("JP");
accessPackageAnswerChoice4.setText("Japan");
choices.add(accessPackageAnswerChoice4);
accessPackageQuestion.setChoices(choices);
questions.add(accessPackageQuestion);
AccessPackageTextInputQuestion accessPackageQuestion1 = new AccessPackageTextInputQuestion();
accessPackageQuestion1.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
accessPackageQuestion1.setSequence(2);
accessPackageQuestion1.setIsRequired(true);
accessPackageQuestion1.setIsAnswerEditable(true);
accessPackageQuestion1.setText("What do you do for work?");
LinkedList<AccessPackageLocalizedText> localizations = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText accessPackageLocalizedText = new AccessPackageLocalizedText();
accessPackageLocalizedText.setLanguageCode("fr-CA");
accessPackageLocalizedText.setText("Que fais-tu comme travail?");
localizations.add(accessPackageLocalizedText);
accessPackageQuestion1.setLocalizations(localizations);
accessPackageQuestion1.setIsSingleLineQuestion(false);
accessPackageQuestion1.setRegexPattern("[a-zA-Z]+[a-zA-Z\s]*");
questions.add(accessPackageQuestion1);
accessPackageAssignmentPolicy.setQuestions(questions);
AccessPackage accessPackage = new AccessPackage();
accessPackage.setId("977c7ff4-ef8f-4910-9d31-49048ddf3120");
accessPackageAssignmentPolicy.setAccessPackage(accessPackage);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().assignmentPolicies().post(accessPackageAssignmentPolicy);


```