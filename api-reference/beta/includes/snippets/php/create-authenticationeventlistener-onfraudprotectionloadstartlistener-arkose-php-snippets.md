---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationEventListener;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionApplication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationEventListener();
$requestBody->setOdataType('#microsoft.graph.onFraudProtectionLoadStartListener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('0001111-aaaa-2222-bbbb-3333cccc4444');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$additionalData = [
'handler' => [
	'@odata.type' => '#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler',
	'signUp' => [
		'@odata.type' => '#microsoft.graph.fraudProtectionProviderConfiguration',
		'fraudProtectionProvider' => [
			'@odata.type' => '#microsoft.graph.arkoseFraudProtectionProvider',
			'id' => '6fedd01b-0afb-4a07-967f-d1ccbd81102b',
		],
	],
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```