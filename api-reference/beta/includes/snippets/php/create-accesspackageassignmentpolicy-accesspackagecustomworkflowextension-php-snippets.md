---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('extension-policy');

$requestBody->setDescription('test');

$requestBody->setAccessPackageId('ba5807c7-2aa9-4c8a-907e-4a17ee587500');

$requestBody->setCanExtend(false);

$requestBody->setRequestApprovalSettings(null);

$requestorSettings = new RequestorSettings();
$requestorSettings->setAcceptRequests(true);

$requestorSettings->setScopeType('AllExistingDirectorySubjects');

$requestorSettings->setAllowedRequestors([	]);

$additionalData = [
		'isOnBehalfAllowed' => false,
];
$requestorSettings->setAdditionalData($additionalData);



$requestBody->setRequestorSettings($requestorSettings);
$requestBody->setAccessReviewSettings(null);

$requestBody->setQuestions([	]);

$customExtensionStageSettingsCustomExtensionStageSetting1 = new CustomExtensionStageSetting();
$customExtensionStageSettingsCustomExtensionStageSetting1->setStage(new AccessPackageCustomExtensionStage('assignmentRequestCreated'));

$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension = new CustomCalloutExtension();
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension->setId('219f57b6-7983-45a1-be01-2c228b7a43f8');


$customExtensionStageSettingsCustomExtensionStageSetting1->setCustomExtension($customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension);

$customExtensionStageSettingsArray []= $customExtensionStageSettingsCustomExtensionStageSetting1;
$customExtensionStageSettingsCustomExtensionStageSetting2 = new CustomExtensionStageSetting();
$customExtensionStageSettingsCustomExtensionStageSetting2->setStage(new AccessPackageCustomExtensionStage('assignmentRequestGranted'));

$customExtensionStageSettingsCustomExtensionStageSetting2CustomExtension = new CustomCalloutExtension();
$customExtensionStageSettingsCustomExtensionStageSetting2CustomExtension->setId('219f57b6-7983-45a1-be01-2c228b7a43f8');


$customExtensionStageSettingsCustomExtensionStageSetting2->setCustomExtension($customExtensionStageSettingsCustomExtensionStageSetting2CustomExtension);

$customExtensionStageSettingsArray []= $customExtensionStageSettingsCustomExtensionStageSetting2;
$requestBody->setCustomExtensionStageSettings($customExtensionStageSettingsArray);


$additionalData = [
	'expiration' => 	[
			'type' => 'afterDuration', 
			'duration' => 'P365D', 
	],

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody);


```