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
$requestBody->setOdataType('#microsoft.graph.onPhoneMethodLoadStartListener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$conditionsApplications->setIncludeApplications(['3dfff01b-0afb-4a07-967f-d1ccbd81102a', 	]);
$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$additionalData = [
	'priority' => 500,
	'handler' => [
		'@odata.type' => '#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler',
		'smsOptions' => [
			'includeAdditionalRegions' => [],
			'excludeRegions' => [
1001,99,777],
		],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```