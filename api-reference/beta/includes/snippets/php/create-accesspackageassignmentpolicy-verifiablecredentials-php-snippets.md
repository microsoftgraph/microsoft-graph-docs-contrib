---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignmentPolicy;
use Microsoft\Graph\Beta\Generated\Models\RequestorSettings;
use Microsoft\Graph\Beta\Generated\Models\UserSet;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageQuestion;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionHandler;
use Microsoft\Graph\Beta\Generated\Models\VerifiableCredentialSettings;
use Microsoft\Graph\Beta\Generated\Models\VerifiableCredentialType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('policy-with-verified-id');
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
$requestBody->setCustomExtensionHandlers([	]);
$verifiableCredentialSettings = new VerifiableCredentialSettings();
$credentialTypesVerifiableCredentialType1 = new VerifiableCredentialType();
$credentialTypesVerifiableCredentialType1->setIssuers(['did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>...', 	]);
$credentialTypesVerifiableCredentialType1->setCredentialType('VerifiedCredentialExpert');
$credentialTypesArray []= $credentialTypesVerifiableCredentialType1;
$verifiableCredentialSettings->setCredentialTypes($credentialTypesArray);

$requestBody->setVerifiableCredentialSettings($verifiableCredentialSettings);
$additionalData = [
'expiration' => [
	'type' => 'afterDuration',
	'duration' => 'P365D',
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentPolicies()->post($requestBody)->wait();

```