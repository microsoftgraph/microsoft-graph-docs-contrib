---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthenticationEventListener;
use Microsoft\Graph\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Generated\Models\AuthenticationConditionApplication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationEventListener();
$requestBody->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationListener');
$requestBody->setDisplayName('Verified ID Claim Validation Listener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('63856651-13d9-4784-9abf-20758d509e19');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

$additionalData = [
'includeAllApplications' => false,
];
$conditionsApplications->setAdditionalData($additionalData);
$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$requestBody->setAuthenticationEventsFlowId('5a8e8f57-82b2-4cbf-b145-3e6e0c154897');
$additionalData = [
'priority' => 500,
'handler' => [
	'@odata.type' => '#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler',
	'configuration' => [
		'@odata.type' => '#microsoft.graph.customExtensionOverwriteConfiguration',
		'clientConfiguration' => [
			'@odata.type' => '#microsoft.graph.customExtensionClientConfiguration',
			'maximumRetries' => 1,
			'timeoutInMilliseconds' => 2000,
		],
		'behaviorOnError' => [
			'@odata.type' => '#microsoft.graph.customExtensionBehaviorOnError',
		],
	],
	'customExtension' => [
		'id' => '6a0a3429-be77-0aed-951e-1c8aed62bf8a',
	],
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```