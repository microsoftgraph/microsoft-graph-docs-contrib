---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyConfigurationPartner;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationPartner();
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

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerTenantId('crossTenantAccessPolicyConfigurationPartner-tenantId')->patch($requestBody)->wait();

```