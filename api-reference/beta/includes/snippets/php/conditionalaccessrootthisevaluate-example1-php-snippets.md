---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\ConditionalAccess\Evaluate\EvaluatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EvaluatePostRequestBody();
$requestBody->setAppliedPoliciesOnly(true);
$additionalData = [
	'signInIdentity' => [
		'@odata.type' => '#microsoft.graph.userSignIn',
		'userId' => '15dc174b-f34c-4588-ac45-61d6e05dce93',
	],
	'signInContext' => [
		'@odata.type' => '#microsoft.graph.applicationContext',
		'includeApplications' => [
'00000003-0000-0ff1-ce00-000000000000', ],
	],
	'signInConditions' => [
		'devicePlatform' => 'android',
		'clientAppType' => 'browser',
		'signInRiskLevel' => 'high',
		'userRiskLevel' => 'high',
		'country' => 'US',
		'ipAddress' => '40.77.182.32',
		'insiderRiskLevel' => 'elevated',
		'authenticationFlow' => [
			'transferMethod' => 'deviceCodeFlow',
		],
		'deviceInfo' => [
			'isCompliant' => true,
		],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->conditionalAccess()->evaluate()->post($requestBody)->wait();

```