---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnPasswordSubmitListener;
use Microsoft\Graph\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Generated\Models\OnPasswordMigrationCustomExtensionHandler;
use Microsoft\Graph\Generated\Models\OnPasswordSubmitCustomExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPasswordSubmitListener();
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
$handler = new OnPasswordMigrationCustomExtensionHandler();
$handler->setOdataType('#microsoft.graph.onPasswordMigrationCustomExtensionHandler');
$handler->setMigrationPropertyId('extension_b7b1c57b532f40b8b5ed4b7a7ba67401_requiresMigration');
$handlerCustomExtension = new OnPasswordSubmitCustomExtension();
$handlerCustomExtension->setId('6fc5012e-7665-43d6-9708-4370863f4e6e');
$handler->setCustomExtension($handlerCustomExtension);
$requestBody->setHandler($handler);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```