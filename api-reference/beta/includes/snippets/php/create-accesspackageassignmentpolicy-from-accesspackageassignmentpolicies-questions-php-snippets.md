---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setAccessPackageId('b2eba9a1-b357-42ee-83a8-336522ed6cbf');

$requestBody->setDisplayName('Users from connected organizations can request');

$requestBody->setDescription('Allow users from configured connected organizations to request and be approved by their sponsors');

$requestBody->setCanExtend(false);

$requestBody->setDurationInDays(365);

$requestBody->setExpirationDateTime(null);

$requestorSettings = new RequestorSettings();
$requestorSettings->setScopeType('AllExistingConnectedOrganizationSubjects');

$requestorSettings->setAcceptRequests(true);


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

$primaryApproversUserSet1 = new UserSet();
$primaryApproversUserSet1->set@odatatype('#microsoft.graph.groupMembers');

$primaryApproversUserSet1->setIsBackup(true);

$additionalData = [
		'id' => 'd2dcb9a1-a445-42ee-83a8-476522ed6cbf', 
		'description' => 'group for users from connected organizations which have no external sponsor', 
];
$primaryApproversUserSet1->setAdditionalData($additionalData);



$primaryApproversArray []= $primaryApproversUserSet1;
$primaryApproversUserSet2 = new UserSet();
$primaryApproversUserSet2->set@odatatype('#microsoft.graph.externalSponsors');

$primaryApproversUserSet2->setIsBackup(false);


$primaryApproversArray []= $primaryApproversUserSet2;
$approvalStagesApprovalStage1->setPrimaryApprovers($primaryApproversArray);



$approvalStagesArray []= $approvalStagesApprovalStage1;
$requestApprovalSettings->setApprovalStages($approvalStagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$questionsAccessPackageQuestion1 = new AccessPackageQuestion();
$questionsAccessPackageQuestion1->setIsRequired(false);

$questionsAccessPackageQuestion1Text = new AccessPackageLocalizedContent();
$questionsAccessPackageQuestion1Text->setDefaultText('what state are you from?');

$localizedTextsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizedTextsAccessPackageLocalizedText1->setText('¿De qué estado eres?');

$localizedTextsAccessPackageLocalizedText1->setLanguageCode('es');


$localizedTextsArray []= $localizedTextsAccessPackageLocalizedText1;
$questionsAccessPackageQuestion1Text->setLocalizedTexts($localizedTextsArray);



$questionsAccessPackageQuestion1->setText($questionsAccessPackageQuestion1Text);
$questionsAccessPackageQuestion1->set@odatatype('#microsoft.graph.accessPackageMultipleChoiceQuestion');

$additionalData = [
'choices' => $choices1 = new ();
$choices1->setActualValue('AZ');

$choices1DisplayValue = new DisplayValue();
$localizedTexts1 = new ();
$localizedTexts1->setText('Arizona');

$localizedTexts1->setLanguageCode('es');


$localizedTextsArray []= $localizedTexts1;
$choices1DisplayValue->setLocalizedTexts($localizedTextsArray);



$choices1->setDisplayValue($choices1DisplayValue);

$choicesArray []= $choices1;
$choices2 = new ();
$choices2->setActualValue('CA');

$choices2DisplayValue = new DisplayValue();
$localizedTexts1 = new ();
$localizedTexts1->setText('California');

$localizedTexts1->setLanguageCode('es');


$localizedTextsArray []= $localizedTexts1;
$choices2DisplayValue->setLocalizedTexts($localizedTextsArray);



$choices2->setDisplayValue($choices2DisplayValue);

$choicesArray []= $choices2;
$choices3 = new ();
$choices3->setActualValue('OH');

$choices3DisplayValue = new DisplayValue();
$localizedTexts1 = new ();
$localizedTexts1->setText('Ohio');

$localizedTexts1->setLanguageCode('es');


$localizedTextsArray []= $localizedTexts1;
$choices3DisplayValue->setLocalizedTexts($localizedTextsArray);



$choices3->setDisplayValue($choices3DisplayValue);

$choicesArray []= $choices3;
$questionsAccessPackageQuestion1->setChoices($choicesArray);


'allowsMultipleSelection' => false,
];
$questionsAccessPackageQuestion1->setAdditionalData($additionalData);



$questionsArray []= $questionsAccessPackageQuestion1;
$questionsAccessPackageQuestion2 = new AccessPackageQuestion();
$questionsAccessPackageQuestion2->setIsRequired(false);

$questionsAccessPackageQuestion2Text = new AccessPackageLocalizedContent();
$questionsAccessPackageQuestion2Text->setDefaultText('Who is your manager?');

$localizedTextsAccessPackageLocalizedText1 = new AccessPackageLocalizedText();
$localizedTextsAccessPackageLocalizedText1->setText('por qué necesita acceso a este paquete');

$localizedTextsAccessPackageLocalizedText1->setLanguageCode('es');


$localizedTextsArray []= $localizedTextsAccessPackageLocalizedText1;
$questionsAccessPackageQuestion2Text->setLocalizedTexts($localizedTextsArray);



$questionsAccessPackageQuestion2->setText($questionsAccessPackageQuestion2Text);
$questionsAccessPackageQuestion2->set@odatatype('#microsoft.graph.accessPackageTextInputQuestion');

$additionalData = [
'isSingleLineQuestion' => false,
];
$questionsAccessPackageQuestion2->setAdditionalData($additionalData);



$questionsArray []= $questionsAccessPackageQuestion2;
$requestBody->setQuestions($questionsArray);




$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody);


```