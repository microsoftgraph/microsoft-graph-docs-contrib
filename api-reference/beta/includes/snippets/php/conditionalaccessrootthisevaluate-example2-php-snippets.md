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
		'@odata.type' => '#microsoft.graph.authContext',
		'authenticationContextValue' => 'c37',
	],
	'signInConditions' => [
		'devicePlatform' => 'windows',
		'clientAppType' => 'mobileAppsAndDesktopClients',
		'signInRiskLevel' => 'medium',
		'userRiskLevel' => 'none',
		'country' => 'US',
		'ipAddress' => '40.77.182.32',
		'insiderRiskLevel' => 'moderate',
		'authenticationFlow' => [
			'transferMethod' => 'authenticationTransfer',
		],
		'deviceInfo' => [
			'profileType' => 'Standard',
		],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->conditionalAccess()->evaluate()->post($requestBody)->wait();

```