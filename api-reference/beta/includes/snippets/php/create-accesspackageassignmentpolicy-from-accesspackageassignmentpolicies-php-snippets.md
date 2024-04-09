---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentPolicy;
use Microsoft\Graph\Generated\Models\RequestorSettings;
use Microsoft\Graph\Generated\Models\UserSet;
use Microsoft\Graph\Generated\Models\ApprovalSettings;
use Microsoft\Graph\Generated\Models\ApprovalStage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setAccessPackageId('56ff43fd-6b05-48df-9634-956a777fce6d');
$requestBody->setDisplayName('direct');
$requestBody->setDescription('direct assignments by administrator');
$requestBody->setAccessReviewSettings(null);
$requestorSettings = new RequestorSettings();
$requestorSettings->setScopeType('NoSubjects');
$requestorSettings->setAcceptRequests(true);
$requestorSettings->setAllowedRequestors([	]);
$requestBody->setRequestorSettings($requestorSettings);
$requestApprovalSettings = new ApprovalSettings();
$requestApprovalSettings->setIsApprovalRequired(false);
$requestApprovalSettings->setIsApprovalRequiredForExtension(false);
$requestApprovalSettings->setIsRequestorJustificationRequired(false);
$requestApprovalSettings->setApprovalMode('NoApproval');
$requestApprovalSettings->setApprovalStages([	]);
$requestBody->setRequestApprovalSettings($requestApprovalSettings);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody)->wait();

```