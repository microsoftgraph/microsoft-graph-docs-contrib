---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('New Policy');
$requestBody->setDescription('policy for assignment');
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
$accessPackage->setId('a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b');
$requestBody->setAccessPackage($accessPackage);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody)->wait();

```