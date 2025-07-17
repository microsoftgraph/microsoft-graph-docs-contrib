---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentPolicy;
use Microsoft\Graph\Generated\Models\AllowedTargetScope;
use Microsoft\Graph\Generated\Models\SubjectSet;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\ExpirationPatternType;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequestorSettings;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentApprovalSettings;
use Microsoft\Graph\Generated\Models\AccessPackageApprovalStage;
use Microsoft\Graph\Generated\Models\AccessPackage;
use Microsoft\Graph\Generated\Models\CustomExtensionStageSetting;
use Microsoft\Graph\Generated\Models\AccessPackageCustomExtensionStage;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequestWorkflowExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('customExtensionStageSettings policy');
$requestBody->setDescription('policy with specified stages for custom extension assignment');
$requestBody->setAllowedTargetScope(new AllowedTargetScope('notSpecified'));
$requestBody->setSpecificAllowedTargets([	]);
$expiration = new ExpirationPattern();
$expiration->setEndDateTime(null);
$expiration->setDuration(null);
$expiration->setType(new ExpirationPatternType('noExpiration'));
$requestBody->setExpiration($expiration);
$requestorSettings = new AccessPackageAssignmentRequestorSettings();
$requestorSettings->setEnableTargetsToSelfAddAccess(false);
$requestorSettings->setEnableTargetsToSelfUpdateAccess(false);
$requestorSettings->setEnableTargetsToSelfRemoveAccess(false);
$requestorSettings->setAllowCustomAssignmentSchedule(true);
$requestorSettings->setEnableOnBehalfRequestorsToAddAccess(false);
$requestorSettings->setEnableOnBehalfRequestorsToUpdateAccess(false);
$requestorSettings->setEnableOnBehalfRequestorsToRemoveAccess(false);
$requestorSettings->setOnBehalfRequestors([	]);
$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
$requestApprovalSettings->setIsApprovalRequiredForAdd(false);
$requestApprovalSettings->setIsApprovalRequiredForUpdate(false);
$requestApprovalSettings->setStages([	]);
$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$accessPackage = new AccessPackage();
$accessPackage->setId('5ad1eb64-15f7-4614-b419-05d11ee266bf');
$requestBody->setAccessPackage($accessPackage);
$customExtensionStageSettingsCustomExtensionStageSetting1 = new CustomExtensionStageSetting();
$customExtensionStageSettingsCustomExtensionStageSetting1->setStage(new AccessPackageCustomExtensionStage('assignmentRequestCreated'));
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension = new AccessPackageAssignmentRequestWorkflowExtension();
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension->setOdataType('#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension');
$customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension->setId('bebe7873-1f0d-4db9-b6c3-01f7ebfe8476');
$customExtensionStageSettingsCustomExtensionStageSetting1->setCustomExtension($customExtensionStageSettingsCustomExtensionStageSetting1CustomExtension);
$customExtensionStageSettingsArray []= $customExtensionStageSettingsCustomExtensionStageSetting1;
$requestBody->setCustomExtensionStageSettings($customExtensionStageSettingsArray);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody)->wait();

```