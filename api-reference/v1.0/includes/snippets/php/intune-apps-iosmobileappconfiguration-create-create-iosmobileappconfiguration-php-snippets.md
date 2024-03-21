---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosMobileAppConfiguration();
$requestBody->setOdataType('#microsoft.graph.iosMobileAppConfiguration');
$requestBody->setTargetedMobileApps(['Targeted Mobile Apps value', 	]);
$requestBody->setDescription('Description value');
$requestBody->setDisplayName('Display Name value');
$requestBody->setVersion(7);
$requestBody->setEncodedSettingXml(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('ZW5jb2RlZFNldHRpbmdYbWw=')));
$settingsAppConfigurationSettingItem1 = new AppConfigurationSettingItem();
$settingsAppConfigurationSettingItem1->setOdataType('microsoft.graph.appConfigurationSettingItem');
$settingsAppConfigurationSettingItem1->setAppConfigKey('App Config Key value');
$settingsAppConfigurationSettingItem1->setAppConfigKeyType(new MdmAppConfigKeyType('integerType'));
$settingsAppConfigurationSettingItem1->setAppConfigKeyValue('App Config Key Value value');
$settingsArray []= $settingsAppConfigurationSettingItem1;
$requestBody->setSettings($settingsArray);


$result = $graphServiceClient->deviceAppManagement()->mobileAppConfigurations()->post($requestBody)->wait();

```