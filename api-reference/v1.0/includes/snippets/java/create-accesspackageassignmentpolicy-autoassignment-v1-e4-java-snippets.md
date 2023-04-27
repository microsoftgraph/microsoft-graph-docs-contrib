---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.displayName = "A Policy With Questions";
accessPackageAssignmentPolicy.description = "";
accessPackageAssignmentPolicy.allowedTargetScope = AllowedTargetScope.ALL_MEMBER_USERS;
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.NO_EXPIRATION;
accessPackageAssignmentPolicy.expiration = expiration;
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
requestorSettings.enableTargetsToSelfAddAccess = false;
requestorSettings.enableTargetsToSelfUpdateAccess = false;
requestorSettings.enableTargetsToSelfRemoveAccess = false;
accessPackageAssignmentPolicy.requestorSettings = requestorSettings;
AccessPackageAssignmentApprovalSettings requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
requestApprovalSettings.isApprovalRequiredForAdd = false;
requestApprovalSettings.isApprovalRequiredForUpdate = false;
LinkedList<AccessPackageApprovalStage> stagesList = new LinkedList<AccessPackageApprovalStage>();
AccessPackageApprovalStage stages = new AccessPackageApprovalStage();
stages.durationBeforeAutomaticDenial = DatatypeFactory.newInstance().newDuration("P7D");
stages.isApproverJustificationRequired = false;
stages.isEscalationEnabled = false;
LinkedList<SubjectSet> fallbackPrimaryApproversList = new LinkedList<SubjectSet>();
stages.fallbackPrimaryApprovers = fallbackPrimaryApproversList;
LinkedList<SubjectSet> escalationApproversList = new LinkedList<SubjectSet>();
stages.escalationApprovers = escalationApproversList;
LinkedList<SubjectSet> fallbackEscalationApproversList = new LinkedList<SubjectSet>();
stages.fallbackEscalationApprovers = fallbackEscalationApproversList;
LinkedList<SubjectSet> primaryApproversList = new LinkedList<SubjectSet>();
SingleUser primaryApprovers = new SingleUser();
primaryApprovers.userId = "08a551cb-575a-4343-b914-f6e42798bd20";
primaryApproversList.add(primaryApprovers);
stages.primaryApprovers = primaryApproversList;
stagesList.add(stages);
requestApprovalSettings.stages = stagesList;
accessPackageAssignmentPolicy.requestApprovalSettings = requestApprovalSettings;
LinkedList<AccessPackageQuestion> questionsList = new LinkedList<AccessPackageQuestion>();
AccessPackageMultipleChoiceQuestion questions = new AccessPackageMultipleChoiceQuestion();
questions.sequence = "1";
questions.isRequired = false;
questions.isAnswerEditable = false;
questions.text = "What country are you working from?";
questions.isMultipleSelectionAllowed = false;
LinkedList<AccessPackageAnswerChoice> choicesList = new LinkedList<AccessPackageAnswerChoice>();
AccessPackageAnswerChoice choices = new AccessPackageAnswerChoice();
choices.actualValue = "KE";
choices.text = "Kenya";
choicesList.add(choices);
AccessPackageAnswerChoice choices1 = new AccessPackageAnswerChoice();
choices1.actualValue = "US";
choices1.text = "United States";
choicesList.add(choices1);
AccessPackageAnswerChoice choices2 = new AccessPackageAnswerChoice();
choices2.actualValue = "GY";
choices2.text = "Guyana";
choicesList.add(choices2);
AccessPackageAnswerChoice choices3 = new AccessPackageAnswerChoice();
choices3.actualValue = "BD";
choices3.text = "Bangladesh";
choicesList.add(choices3);
AccessPackageAnswerChoice choices4 = new AccessPackageAnswerChoice();
choices4.actualValue = "JP";
choices4.text = "Japan";
choicesList.add(choices4);
questions.choices = choicesList;
questionsList.add(questions);
AccessPackageTextInputQuestion questions1 = new AccessPackageTextInputQuestion();
questions1.sequence = "2";
questions1.isRequired = false;
questions1.isAnswerEditable = false;
questions1.text = "What do you do for work?";
LinkedList<AccessPackageLocalizedText> localizationsList = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText localizations = new AccessPackageLocalizedText();
localizations.languageCode = "fr-CA";
localizations.text = "Que fais-tu comme travail?";
localizationsList.add(localizations);
questions1.localizations = localizationsList;
questions1.isSingleLineQuestion = false;
questions1.regexPattern = "[a-zA-Z]+[a-zA-Z\\s]*";
questionsList.add(questions1);
AccessPackageQuestionCollectionResponse accessPackageQuestionCollectionResponse = new AccessPackageQuestionCollectionResponse();
accessPackageQuestionCollectionResponse.value = questionsList;
AccessPackageQuestionCollectionPage accessPackageQuestionCollectionPage = new AccessPackageQuestionCollectionPage(accessPackageQuestionCollectionResponse, null);
accessPackageAssignmentPolicy.questions = accessPackageQuestionCollectionPage;
AccessPackage accessPackage = new AccessPackage();
accessPackage.id = "977c7ff4-ef8f-4910-9d31-49048ddf3120";
accessPackageAssignmentPolicy.accessPackage = accessPackage;

graphClient.identityGovernance().entitlementManagement().assignmentPolicies()
	.buildRequest()
	.post(accessPackageAssignmentPolicy);

```