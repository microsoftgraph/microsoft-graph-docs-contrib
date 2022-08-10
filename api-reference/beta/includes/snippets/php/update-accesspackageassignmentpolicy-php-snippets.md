---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicie();
$additionalData = [
'id' => 'b2eba9a1-b357-42ee-83a8-336522ed6cbf', 
'accessPackageId' => '4c02f928-7752-49aa-8fc8-e286d973a965', 
'displayName' => 'All Users', 
'description' => 'All users can request for access to the directory.', 
'canExtend' => false,
'durationInDays' => 365,
'expirationDateTime' => 		null,
'requestorSettings' => $requestBody = new RequestorSettings();
$		requestBody->setScopeType('AllExistingConnectedOrganizationSubjects');

		$requestBody->setAcceptRequests(true);

$requestBody->setAllowedRequestors([]);


$requestBody->setRequestorSettings($requestorSettings);

'requestApprovalSettings' => $requestBody = new RequestApprovalSettings();
	$requestBody->setIsApprovalRequired(true);

	$requestBody->setIsApprovalRequiredForExtension(false);

	$requestBody->setIsRequestorJustificationRequired(true);

$	requestBody->setApprovalMode('SingleStage');

$approvalStages1 = new ();
	$approvalStages1->setApprovalStageTimeOutInDays(14);

	$approvalStages1->setIsApproverJustificationRequired(true);

	$approvalStages1->setIsEscalationEnabled(false);

	$approvalStages1->setEscalationTimeInMinutes(11520);

$primaryApprovers1 = new ();
$	primaryApprovers1->set@odatatype('#microsoft.graph.groupMembers');

	$primaryApprovers1->setIsBackup(true);

$	primaryApprovers1->setId('d2dcb9a1-a445-42ee-83a8-476522ed6cbf');

$	primaryApprovers1->setDescription('group for users from connected organizations which have no external sponsor');


$primaryApproversArray []= $primaryApprovers1;
$primaryApprovers2 = new ();
$	primaryApprovers2->set@odatatype('#microsoft.graph.externalSponsors');

	$primaryApprovers2->setIsBackup(false);


$primaryApproversArray []= $primaryApprovers2;
$approvalStages1->setPrimaryApprovers($primaryApproversArray);



$approvalStagesArray []= $approvalStages1;
$requestBody->setApprovalStages($approvalStagesArray);



$requestBody->setRequestApprovalSettings($requestApprovalSettings);

'questions' => $questions1 = new ();
$questions1->setIsRequired(false);

$questions1Text = new Text();
$questions1Text->setDefaultText('what state are you from?');

$localizedTexts1 = new ();
$localizedTexts1->setText('¿De qué estado eres?');

$localizedTexts1->setLanguageCode('es');


$localizedTextsArray []= $localizedTexts1;
$questions1Text->setLocalizedTexts($localizedTextsArray);



$questions1->setText($questions1Text);
$questions1->set@odatatype('#microsoft.graph.accessPackageMultipleChoiceQuestion');

$choices1 = new ();
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
$questions1->setChoices($choicesArray);


$questions1->setAllowsMultipleSelection(false);


$questionsArray []= $questions1;
$questions2 = new ();
$questions2->setIsRequired(false);

$questions2Text = new Text();
$questions2Text->setDefaultText('Who is your manager?');

$localizedTexts1 = new ();
$localizedTexts1->setText('por qué necesita acceso a este paquete');

$localizedTexts1->setLanguageCode('es');


$localizedTextsArray []= $localizedTexts1;
$questions2Text->setLocalizedTexts($localizedTextsArray);



$questions2->setText($questions2Text);
$questions2->set@odatatype('#microsoft.graph.accessPackageTextInputQuestion');

$questions2->setIsSingleLineQuestion(false);


$questionsArray []= $questions2;
$requestBody->setQuestions($questionsArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPoliciesById('accessPackageAssignmentPolicy-id')->put($requestBody);


```