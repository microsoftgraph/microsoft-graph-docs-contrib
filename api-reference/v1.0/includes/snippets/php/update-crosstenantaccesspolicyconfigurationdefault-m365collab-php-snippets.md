---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyConfigurationDefault;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationDefault();
$additionalData = [
	'm365CollaborationInbound' => [
		'users' => [
			'accessType' => 'allowed',
			'targets' => [
					[
						'target' => 'AllUsers',
						'targetType' => 'user',
					],
				],
		],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->escapedDefault()->patch($requestBody)->wait();

```