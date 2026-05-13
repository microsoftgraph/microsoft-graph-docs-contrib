---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationEventListener;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationEventListener();
$requestBody->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationListener');
$requestBody->setDisplayName('Verified ID Claim Validation Listener (updated)');
$additionalData = [
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
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->authenticationEventListeners()->byAuthenticationEventListenerId('authenticationEventListener-id')->patch($requestBody)->wait();

```