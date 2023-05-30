---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('A Policy With Questions');

$requestBody->setDescription('');

$requestBody->setAllowedTargetScope(new AllowedTargetScope('allmemberusers'));

$expiration = new ExpirationPattern();
$expiration->setType(new ExpirationPatternType('noexpiration'));


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

$stagesAccessPackageApprovalStage1->setFallbackPrimaryApprovers([]);

$stagesAccessPackageApprovalStage1->setEscalationApprovers([]);

$stagesAccessPackageApprovalStage1->setFallbackEscalationApprovers([]);

$primaryApproversSubjectSet1 = new SubjectSet();
$primaryApproversSubjectSet1->set@odatatype('#microsoft.graph.singleUser');

$additionalData = [
'userId' => '08a551cb-575a-4343-b914-f6e42798bd20', 
];
$primaryApproversSubjectSet1->setAdditionalData($additionalData);



$primaryApproversArray []= $primaryApproversSubjectSet1;
$stagesAccessPackageApprovalStage1->setPrimaryApprovers($primaryApproversArray);



$stagesArray []= $stagesAccessPackageApprovalStage1;
$requestApprovalSettings->setStages($stagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$questionsAccessPackageQuestion1 = new AccessPackageQuestion();
$questionsAccessPackageQuestion1->set@odatatype('#microsoft.graph.accessPackageMultipleChoiceQuestion');

$questionsAccessPackageQuestion1->setSequence(1);

$questionsAccessPackageQuestion1->setIsRequired(true);

$questionsAccessPackageQuestion1->setIsAnswerEditable(true);

$questionsAccessPackageQuestion1->setText('What country are you working from?');

$additionalData = [
'isMultipleSelectionAllowed' => 'false', 
'choices' => $choices1 = new ();
$choices1->set@odatatype('microsoft.graph.accessPackageAnswerChoice');

$choices1->setActualValue('KE');

$choices1->setText('Kenya');


$choicesArray []= $choices1;
$choices2 = new ();
$choices2->set@odatatype('microsoft.graph.accessPackageAnswerChoice');

$choices2->setActualValue('US');

$choices2->setText('United States');


$choicesArray []= $choices2;
$choices3 = new ();
$choices3->set@odatatype('microsoft.graph.accessPackageAnswerChoice');

$choices3->setActualValue('GY');

$choices3->setText('Guyana');


$choicesArray []= $choices3;
$choices4 = new ();
$choices4->set@odatatype('microsoft.graph.accessPackageAnswerChoice');

$choices4->setActualValue('BD');

$choices4->setText('Bangladesh');


$choicesArray []= $choices4;
$choices5 = new ();
$choices5->set@odatatype('microsoft.graph.accessPackageAnswerChoice');

$choices5->setActualValue('JP');

$choices5->setText('Japan');


$choicesArray []= $choices5;
$questionsAccessPackageQuestion1->setChoices($choicesArray);


];
$questionsAccessPackageQuestion1->setAdditionalData($additionalData);



$questionsArray []= $questionsAccessPackageQuestion1;
$questionsAccessPackageQuestion2 = new AccessPackageQuestion();
$questionsAccessPackageQuestion2->set@odatatype('#microsoft.graph.accessPackageTextInputQuestion');

$questionsAccessPackageQuestion2->setSequence(2);

$questionsAccessPackageQuestion2->setIsRequired(true);

$questionsAccessPackageQuestion2->setIsAnswerEditable(true);

$questionsAccessPackageQuestion2->setText('What do you do for work?');

$localizationsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizationsAccessPackageLocalizedText1->setLanguageCode('fr-CA');

$localizationsAccessPackageLocalizedText1->setText('Que fais-tu comme travail?');


$localizationsArray []= $localizationsAccessPackageLocalizedText1;
$questionsAccessPackageQuestion2->setLocalizations($localizationsArray);


$additionalData = [
'isSingleLineQuestion' => 'false', 
'regexPattern' => '[a-zA-Z]+[a-zA-Z\s]*', 
];
$questionsAccessPackageQuestion2->setAdditionalData($additionalData);



$questionsArray []= $questionsAccessPackageQuestion2;
$requestBody->setQuestions($questionsArray);


$accessPackage = new AccessPackage();
$accessPackage->setId('977c7ff4-ef8f-4910-9d31-49048ddf3120');


$requestBody->setAccessPackage($accessPackage);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody);


```