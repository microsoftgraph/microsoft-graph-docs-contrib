---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setId('b2eba9a1-b357-42ee-83a8-336522ed6cbf');

$requestBody->setAccessPackageId('4c02f928-7752-49aa-8fc8-e286d973a965');

$requestBody->setDisplayName('All Users');

$requestBody->setDescription('All users can request for access to the directory.');

$requestBody->setCanExtend(false);

$requestBody->setDurationInDays(365);

$requestBody->setExpirationDateTime(null);

$requestorSettings = new RequestorSettings();
$requestorSettings->setScopeType('AllExistingConnectedOrganizationSubjects');

$requestorSettings->setAcceptRequests(true);

$requestorSettings->setAllowedRequestors([	]);


$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new ApprovalSettings();
$requestApprovalSettings->setIsApprovalRequired(true);

$requestApprovalSettings->setIsApprovalRequiredForExtension(false);

$requestApprovalSettings->setIsRequestorJustificationRequired(true);

$requestApprovalSettings->setApprovalMode('SingleStage');

$approvalStagesApprovalStage1 = new ApprovalStage();
$approvalStagesApprovalStage1->setApprovalStageTimeOutInDays(14);

$approvalStagesApprovalStage1->setIsApproverJustificationRequired(true);

$approvalStagesApprovalStage1->setIsEscalationEnabled(false);

$approvalStagesApprovalStage1->setEscalationTimeInMinutes(11520);

$primaryApproversUserSet1 = new GroupMembers();
$primaryApproversUserSet1->setOdataType('#microsoft.graph.groupMembers');

$primaryApproversUserSet1->setIsBackup(true);

$primaryApproversUserSet1->setId('d2dcb9a1-a445-42ee-83a8-476522ed6cbf');

$primaryApproversUserSet1->setDescription('group for users from connected organizations which have no external sponsor');


$primaryApproversArray []= $primaryApproversUserSet1;
$primaryApproversUserSet2 = new ExternalSponsors();
$primaryApproversUserSet2->setOdataType('#microsoft.graph.externalSponsors');

$primaryApproversUserSet2->setIsBackup(false);


$primaryApproversArray []= $primaryApproversUserSet2;
$approvalStagesApprovalStage1->setPrimaryApprovers($primaryApproversArray);



$approvalStagesArray []= $approvalStagesApprovalStage1;
$requestApprovalSettings->setApprovalStages($approvalStagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$questionsAccessPackageQuestion1 = new AccessPackageMultipleChoiceQuestion();
$questionsAccessPackageQuestion1->setIsRequired(false);

$questionsAccessPackageQuestion1Text = new AccessPackageLocalizedContent();
$questionsAccessPackageQuestion1Text->setDefaultText('what state are you from?');

$localizedTextsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizedTextsAccessPackageLocalizedText1->setText('¿De qué estado eres?');

$localizedTextsAccessPackageLocalizedText1->setLanguageCode('es');


$localizedTextsArray []= $localizedTextsAccessPackageLocalizedText1;
$questionsAccessPackageQuestion1Text->setLocalizedTexts($localizedTextsArray);



$questionsAccessPackageQuestion1->setText($questionsAccessPackageQuestion1Text);
$questionsAccessPackageQuestion1->setOdataType('#microsoft.graph.accessPackageMultipleChoiceQuestion');

$choicesAccessPackageAnswerChoice1 = new AccessPackageAnswerChoice();
$choicesAccessPackageAnswerChoice1->setActualValue('AZ');

$choicesAccessPackageAnswerChoice1DisplayValue = new AccessPackageLocalizedContent();
$localizedTextsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizedTextsAccessPackageLocalizedText1->setText('Arizona');

$localizedTextsAccessPackageLocalizedText1->setLanguageCode('es');


$localizedTextsArray []= $localizedTextsAccessPackageLocalizedText1;
$choicesAccessPackageAnswerChoice1DisplayValue->setLocalizedTexts($localizedTextsArray);



$choicesAccessPackageAnswerChoice1->setDisplayValue($choicesAccessPackageAnswerChoice1DisplayValue);

$choicesArray []= $choicesAccessPackageAnswerChoice1;
$choicesAccessPackageAnswerChoice2 = new AccessPackageAnswerChoice();
$choicesAccessPackageAnswerChoice2->setActualValue('CA');

$choicesAccessPackageAnswerChoice2DisplayValue = new AccessPackageLocalizedContent();
$localizedTextsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizedTextsAccessPackageLocalizedText1->setText('California');

$localizedTextsAccessPackageLocalizedText1->setLanguageCode('es');


$localizedTextsArray []= $localizedTextsAccessPackageLocalizedText1;
$choicesAccessPackageAnswerChoice2DisplayValue->setLocalizedTexts($localizedTextsArray);



$choicesAccessPackageAnswerChoice2->setDisplayValue($choicesAccessPackageAnswerChoice2DisplayValue);

$choicesArray []= $choicesAccessPackageAnswerChoice2;
$questionsAccessPackageQuestion1->setChoices($choicesArray);


$questionsAccessPackageQuestion1->setAllowsMultipleSelection(false);


$questionsArray []= $questionsAccessPackageQuestion1;
$questionsAccessPackageQuestion2 = new AccessPackageTextInputQuestion();
$questionsAccessPackageQuestion2->setIsRequired(false);

$questionsAccessPackageQuestion2Text = new AccessPackageLocalizedContent();
$questionsAccessPackageQuestion2Text->setDefaultText('Who is your manager?');

$localizedTextsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizedTextsAccessPackageLocalizedText1->setText('por qué necesita acceso a este paquete');

$localizedTextsAccessPackageLocalizedText1->setLanguageCode('es');


$localizedTextsArray []= $localizedTextsAccessPackageLocalizedText1;
$questionsAccessPackageQuestion2Text->setLocalizedTexts($localizedTextsArray);



$questionsAccessPackageQuestion2->setText($questionsAccessPackageQuestion2Text);
$questionsAccessPackageQuestion2->setOdataType('#microsoft.graph.accessPackageTextInputQuestion');

$questionsAccessPackageQuestion2->setIsSingleLineQuestion(false);


$questionsArray []= $questionsAccessPackageQuestion2;
$requestBody->setQuestions($questionsArray);




$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->byAccessPackageAssignmentPolicyId('accessPackageAssignmentPolicy-id')->put($requestBody);


```