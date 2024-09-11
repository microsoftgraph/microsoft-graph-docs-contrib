---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentPolicy;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\ExpirationPatternType;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequestorSettings;
use Microsoft\Graph\Generated\Models\CustomExtensionStageSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setId('5540a08f-8ab5-43f6-a923-015275799197');
$requestBody->setDisplayName('policy with access package custom workflow extension');
$requestBody->setDescription('Run specified access package custom workflow extension at different stages.');
$expiration = new ExpirationPattern();
$expiration->setType(new ExpirationPatternType('afterDuration'));
$expiration->setDuration(new \DateInterval('P365D'));
$requestBody->setExpiration($expiration);
$requestBody->setRequestApprovalSettings(null);
$requestorSettings = new AccessPackageAssignmentRequestorSettings();
$additionalData = [
	'acceptRequests' => true,
	'scopeType' => 'AllExistingDirectorySubjects',
	'allowedRequestors' => [],
];
$requestorSettings->setAdditionalData($additionalData);
$requestBody->setRequestorSettings($requestorSettings);
$requestBody->setCustomExtensionStageSettings([	]);
$additionalData = [
	'accessPackageId' => 'ba5807c7-2aa9-4c8a-907e-4a17ee587500',
	'accessReviewSettings' => null,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->byAccessPackageAssignmentPolicyId('accessPackageAssignmentPolicy-id')->put($requestBody)->wait();

```