---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setAccessPackageId('56ff43fd-6b05-48df-9634-956a777fce6d');

$requestBody->setDisplayName('direct');

$requestBody->setDescription('direct assignments by administrator');

$requestBody->setAccessReviewSettings(null);

$requestorSettings = new RequestorSettings();
$requestorSettings->setScopeType('NoSubjects');

$requestorSettings->setAcceptRequests(true);

$requestorSettings->setAllowedRequestors([]);


$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new ApprovalSettings();
$requestApprovalSettings->setIsApprovalRequired(false);

$requestApprovalSettings->setIsApprovalRequiredForExtension(false);

$requestApprovalSettings->setIsRequestorJustificationRequired(false);

$requestApprovalSettings->setApprovalMode('NoApproval');

$requestApprovalSettings->setApprovalStages([]);


$requestBody->setRequestApprovalSettings($requestApprovalSettings);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody);


```