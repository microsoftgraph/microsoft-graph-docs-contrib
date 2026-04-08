---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentPolicy;
use Microsoft\Graph\Generated\Models\AccessPackageQuestion;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequestorSettings;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentApprovalSettings;
use Microsoft\Graph\Generated\Models\CustomExtensionStageSetting;
use Microsoft\Graph\Generated\Models\AccessPackageCustomExtensionStage;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequestWorkflowExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('Dynamic approver policy');
$requestBody->setDescription('Dynamic approver policy');
$requestBody->setQuestions([	]);
$requestorSettings = new AccessPackageAssignmentRequestorSettings();
$additionalData = [
	'scopeType' => 'AllExistingDirectorySubjects',
	'acceptRequests' => true,
	'allowedRequestors' => [],
];
$requestorSettings->setAdditionalData($additionalData);
$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
$requestApprovalSettings->setIsRequestorJustificationRequired(true);
$additionalData = [
	'isApprovalRequired' => true,
	'isApprovalRequiredForExtension' => false,
	'approvalMode' => 'SingleStage',
	'approvalStages' => [
			[
				'@odata.type' => '#microsoft.graph.accessPackageDynamicApprovalStage',
				'customExtension' => [
					'@odata.type' => '#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension',
					'id' => '52036a43-10b5-444d-a1a2-d4f240420239',
				],
			],
		],
];
$requestApprovalSettings->setAdditionalData($additionalData);
$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$customExtensionStageSettingsCustomExtensionStageSetting1 = new CustomExtensionStageSetting();
$customExtensionStageSettingsCustomExtensionStageSetting1->setStage(new AccessPackageCustomExtensionStage('assignmentRequestDeterminingApprovalRequirements'));
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension = new AccessPackageAssignmentRequestWorkflowExtension();
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension->setOdataType('#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension');
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension->setId('52036a43-10b5-444d-a1a2-d4f240420239');
$customExtensionStageSettingsCustomExtensionStageSetting1->setCustomExtension($customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension);
$customExtensionStageSettingsArray []= $customExtensionStageSettingsCustomExtensionStageSetting1;
$requestBody->setCustomExtensionStageSettings($customExtensionStageSettingsArray);

$additionalData = [
'@odata.context' => 'https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/$entity',
'canExtend' => false,
'durationInDays' => 0,
'expirationDateTime' => null,
'accessPackageId' => 'fc29cdca-57f6-47e3-b20c-3fa18e4826ac',
'accessReviewSettings' => null,
'accessPackageNotificationSettings' => [
	'isAssignmentNotificationDisabled' => false,
],
'verifiableCredentialSettings' => [
	'credentialTypes' => [],
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody)->wait();

```