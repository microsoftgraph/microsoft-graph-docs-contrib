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
$requestBody->setOdataType('#microsoft.graph.onPasswordSubmitListener');
$requestBody->setDisplayName('JIT migration listener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('00011111-aaaa-2222-bbbb-3333cccc4444');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

$additionalData = [
'includeAllApplications' => false,
];
$conditionsApplications->setAdditionalData($additionalData);
$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$additionalData = [
'handler' => [
	'@odata.type' => '#microsoft.graph.onPasswordMigrationCustomExtensionHandler',
	'migrationPropertyId' => 'extension_b7b1c57b532f40b8b5ed4b7a7ba67401_requiresMigration',
	'customExtension' => [
		'id' => '6fc5012e-7665-43d6-9708-4370863f4e6e',
	],
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```