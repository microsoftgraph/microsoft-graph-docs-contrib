---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TargetedManagedAppConfiguration();
$requestBody->setOdataType('#microsoft.graph.targetedManagedAppConfiguration');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setVersion('Version value');

$customSettingsKeyValuePair1 = new KeyValuePair();
$customSettingsKeyValuePair1->setOdataType('microsoft.graph.keyValuePair');

$customSettingsKeyValuePair1->setName('Name value');

$customSettingsKeyValuePair1->setValue('Value value');


$customSettingsArray []= $customSettingsKeyValuePair1;
$requestBody->setCustomSettings($customSettingsArray);


$requestBody->setDeployedAppCount(0);

$requestBody->setIsAssigned(true);



$result = $graphServiceClient->deviceAppManagement()->targetedManagedAppConfigurations()->byTargetedManagedAppConfigurationId('targetedManagedAppConfiguration-id')->patch($requestBody);


```