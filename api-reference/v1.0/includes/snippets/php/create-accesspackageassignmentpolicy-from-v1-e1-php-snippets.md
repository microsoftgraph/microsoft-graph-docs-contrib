---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('New Policy');

$requestBody->setDescription('policy for assignment');

$requestBody->setAllowedTargetScope(new AllowedTargetScope('notspecified'));

$requestBody->setSpecificAllowedTargets([]);

$expiration = new ExpirationPattern();
$Expiration->setEndDateTime(null);

$Expiration->setDuration(null);

$expiration->setType(new ExpirationPatternType('noexpiration'));


$requestBody->setExpiration($expiration);
$requestorSettings = new AccessPackageAssignmentRequestorSettings();
$requestorSettings->setEnableTargetsToSelfAddAccess(false);

$requestorSettings->setEnableTargetsToSelfUpdateAccess(false);

$requestorSettings->setEnableTargetsToSelfRemoveAccess(false);

$requestorSettings->setAllowCustomAssignmentSchedule(true);

$requestorSettings->setEnableOnBehalfRequestorsToAddAccess(false);

$requestorSettings->setEnableOnBehalfRequestorsToUpdateAccess(false);

$requestorSettings->setEnableOnBehalfRequestorsToRemoveAccess(false);

$requestorSettings->setOnBehalfRequestors([]);


$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new AccessPackageAssignmentApprovalSettings();
$requestApprovalSettings->setIsApprovalRequiredForAdd(false);

$requestApprovalSettings->setIsApprovalRequiredForUpdate(false);

$requestApprovalSettings->setStages([]);


$requestBody->setRequestApprovalSettings($requestApprovalSettings);
$accessPackage = new AccessPackage();
$accessPackage->setId('a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b');


$requestBody->setAccessPackage($accessPackage);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody);


```