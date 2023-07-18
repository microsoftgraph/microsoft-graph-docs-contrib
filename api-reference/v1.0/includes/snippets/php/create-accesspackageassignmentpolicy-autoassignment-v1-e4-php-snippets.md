---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('A Policy With Questions');

$requestBody->setDescription('');

$requestBody->setAllowedTargetScope(new AllowedTargetScope('allMemberUsers'));

$expiration = new ExpirationPattern();
$expiration->setType(new ExpirationPatternType('noExpiration'));


$requestBody->setExpiration($expiration);
$requestorSettings = new AccessPackageAssignmentRequestorSettings();
$requestorSettings->setEnableTargetsToSelfAddAccess(true);

$requestorSettings->setEnableTargetsToSelfUpdateAccess(true);

$requestorSettings->setEnableTargetsToSelfRemoveAccess(true);


$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
$requestApprovalSettings->setIsApprovalRequiredForAdd(true);

$requestApprovalSettings->setIsApprovalRequiredForUpdate(true);

$stagesAccessPackageApprovalStage1 = new AccessPackageApprovalStage();
$stagesAccessPackageApprovalStage1->setDurationBeforeAutomaticDenial(new \DateInterval('P7D'));

$stagesAccessPackageApprovalStage1->setIsApproverJustificationRequired(false);

$stagesAccessPackageApprovalStage1->setIsEscalationEnabled(false);

$stagesAccessPackageApprovalStage1->setFallbackPrimaryApprovers([	]);

$stagesAccessPackageApprovalStage1->setEscalationApprovers([	]);

$stagesAccessPackageApprovalStage1->setFallbackEscalationApprovers([	]);

$primaryApproversSubjectSet1 = new SingleUser();
$primaryApproversSubjectSet1->setOdataType('#microsoft.graph.singleUser');

$primaryApproversSubjectSet1->setUserId('08a551cb-575a-4343-b914-f6e42798bd20');


$primaryApproversArray []= $primaryApproversSubjectSet1;
$stagesAccessPackageApprovalStage1->setPrimaryApprovers($primaryApproversArray);



$stagesArray []= $stagesAccessPackageApprovalStage1;
$requestApprovalSettings->setStages($stagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$questionsAccessPackageQuestion1 = new AccessPackageMultipleChoiceQuestion();
$questionsAccessPackageQuestion1->setOdataType('#microsoft.graph.accessPackageMultipleChoiceQuestion');

$questionsAccessPackageQuestion1->setSequence(1);

$questionsAccessPackageQuestion1->setIsRequired(true);

$questionsAccessPackageQuestion1->setIsAnswerEditable(true);

$questionsAccessPackageQuestion1->setText('What country are you working from?');

$questionsAccessPackageQuestion1->setIsMultipleSelectionAllowed(false);

$choicesAccessPackageAnswerChoice1 = new AccessPackageAnswerChoice();
$choicesAccessPackageAnswerChoice1->setOdataType('microsoft.graph.accessPackageAnswerChoice');

$choicesAccessPackageAnswerChoice1->setActualValue('KE');

$choicesAccessPackageAnswerChoice1->setText('Kenya');


$choicesArray []= $choicesAccessPackageAnswerChoice1;
$choicesAccessPackageAnswerChoice2 = new AccessPackageAnswerChoice();
$choicesAccessPackageAnswerChoice2->setOdataType('microsoft.graph.accessPackageAnswerChoice');

$choicesAccessPackageAnswerChoice2->setActualValue('US');

$choicesAccessPackageAnswerChoice2->setText('United States');


$choicesArray []= $choicesAccessPackageAnswerChoice2;
$choicesAccessPackageAnswerChoice3 = new AccessPackageAnswerChoice();
$choicesAccessPackageAnswerChoice3->setOdataType('microsoft.graph.accessPackageAnswerChoice');

$choicesAccessPackageAnswerChoice3->setActualValue('GY');

$choicesAccessPackageAnswerChoice3->setText('Guyana');


$choicesArray []= $choicesAccessPackageAnswerChoice3;
$choicesAccessPackageAnswerChoice4 = new AccessPackageAnswerChoice();
$choicesAccessPackageAnswerChoice4->setOdataType('microsoft.graph.accessPackageAnswerChoice');

$choicesAccessPackageAnswerChoice4->setActualValue('BD');

$choicesAccessPackageAnswerChoice4->setText('Bangladesh');


$choicesArray []= $choicesAccessPackageAnswerChoice4;
$choicesAccessPackageAnswerChoice5 = new AccessPackageAnswerChoice();
$choicesAccessPackageAnswerChoice5->setOdataType('microsoft.graph.accessPackageAnswerChoice');

$choicesAccessPackageAnswerChoice5->setActualValue('JP');

$choicesAccessPackageAnswerChoice5->setText('Japan');


$choicesArray []= $choicesAccessPackageAnswerChoice5;
$questionsAccessPackageQuestion1->setChoices($choicesArray);



$questionsArray []= $questionsAccessPackageQuestion1;
$questionsAccessPackageQuestion2 = new AccessPackageTextInputQuestion();
$questionsAccessPackageQuestion2->setOdataType('#microsoft.graph.accessPackageTextInputQuestion');

$questionsAccessPackageQuestion2->setSequence(2);

$questionsAccessPackageQuestion2->setIsRequired(true);

$questionsAccessPackageQuestion2->setIsAnswerEditable(true);

$questionsAccessPackageQuestion2->setText('What do you do for work?');

$localizationsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizationsAccessPackageLocalizedText1->setLanguageCode('fr-CA');

$localizationsAccessPackageLocalizedText1->setText('Que fais-tu comme travail?');


$localizationsArray []= $localizationsAccessPackageLocalizedText1;
$questionsAccessPackageQuestion2->setLocalizations($localizationsArray);


$questionsAccessPackageQuestion2->setIsSingleLineQuestion(false);

$questionsAccessPackageQuestion2->setRegexPattern('[a-zA-Z]+[a-zA-Z\s]*');


$questionsArray []= $questionsAccessPackageQuestion2;
$requestBody->setQuestions($questionsArray);


$accessPackage = new AccessPackage();
$accessPackage->setId('977c7ff4-ef8f-4910-9d31-49048ddf3120');


$requestBody->setAccessPackage($accessPackage);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody);


```