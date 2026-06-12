---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\Alert;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertSeverity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setOdataType('#microsoft.graph.security.manualAlert');
$requestBody->setTitle('Suspicious login from TOR exit node');
$requestBody->setDescription('User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.');
$requestBody->setCategory('InitialAccess');
$requestBody->setSeverity(new AlertSeverity('high'));
$requestBody->setRecommendedActions('Reset user credentials, enable MFA, review recent user activity');
$requestBody->setMitreTechniques(['T1078', 	]);
$additionalData = [
	'entityDefinitions' => [
			[
				'entityType' => 'user',
				'entityIdentifier' => 'userPrincipalName',
				'identifierValue' => 'john.doe@contoso.com',
				'role' => 'impacted',
			],
			[
				'entityType' => 'ip',
				'entityIdentifier' => 'address',
				'identifierValue' => '185.220.101.50',
				'role' => 'related',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->alerts_v2()->post($requestBody)->wait();

```