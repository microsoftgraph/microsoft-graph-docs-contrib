---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignmentPolicy;
use Microsoft\Graph\Beta\Generated\Models\RequestorSettings;
use Microsoft\Graph\Beta\Generated\Models\ApprovalSettings;
use Microsoft\Graph\Beta\Generated\Models\AccessPackage;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionStageSetting;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageCustomExtensionStage;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignmentRequestWorkflowExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('API Created policy with updated customExtensionStageSettings');
$requestBody->setDescription('policy with updated customExtensionStageSettings');
$requestorSettings = new RequestorSettings();
$additionalData = [
	'enableTargetsToSelfAddAccess' => false,
	'enableTargetsToSelfUpdateAccess' => false,
	'enableTargetsToSelfRemoveAccess' => false,
	'allowCustomAssignmentSchedule' => true,
	'enableOnBehalfRequestorsToAddAccess' => false,
	'enableOnBehalfRequestorsToUpdateAccess' => false,
	'enableOnBehalfRequestorsToRemoveAccess' => false,
	'onBehalfRequestors' => [],
];
$requestorSettings->setAdditionalData($additionalData);
$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new ApprovalSettings();
$additionalData = [
	'isApprovalRequiredForAdd' => false,
	'isApprovalRequiredForUpdate' => false,
	'stages' => [],
];
$requestApprovalSettings->setAdditionalData($additionalData);
$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$accessPackage = new AccessPackage();
$accessPackage->setId('f9afd2e3-7486-40df-9c35-aa2ae108c495');
$requestBody->setAccessPackage($accessPackage);
$customExtensionStageSettingsCustomExtensionStageSetting1 = new CustomExtensionStageSetting();
$customExtensionStageSettingsCustomExtensionStageSetting1->setStage(new AccessPackageCustomExtensionStage('assignmentRequestCreated'));
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension = new AccessPackageAssignmentRequestWorkflowExtension();
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension->setOdataType('#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension');
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension->setId('bebe7873-1f0d-4db9-b6c3-01f7ebfe8476');
$customExtensionStageSettingsCustomExtensionStageSetting1->setCustomExtension($customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension);
$customExtensionStageSettingsArray []= $customExtensionStageSettingsCustomExtensionStageSetting1;
$requestBody->setCustomExtensionStageSettings($customExtensionStageSettingsArray);

$additionalData = [
'allowedTargetScope' => 'notSpecified',
'specificAllowedTargets' => [],
'expiration' => [
	'endDateTime' => null,
	'duration' => null,
	'type' => 'noExpiration',
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->byAccessPackageAssignmentPolicyId('accessPackageAssignmentPolicy-id')->put($requestBody)->wait();

```