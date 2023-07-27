---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosMobileAppConfiguration();
$requestBody->setOdataType('#microsoft.graph.iosMobileAppConfiguration');

$requestBody->setTargetedMobileApps(['Targeted Mobile Apps value', 	]);

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setEncodedSettingXml(base64_decode('ZW5jb2RlZFNldHRpbmdYbWw='));

$settingsAppConfigurationSettingItem1 = new AppConfigurationSettingItem();
$settingsAppConfigurationSettingItem1->setOdataType('microsoft.graph.appConfigurationSettingItem');

$settingsAppConfigurationSettingItem1->setAppConfigKey('App Config Key value');

$settingsAppConfigurationSettingItem1->setAppConfigKeyType(new MdmAppConfigKeyType('integerType'));

$settingsAppConfigurationSettingItem1->setAppConfigKeyValue('App Config Key Value value');


$settingsArray []= $settingsAppConfigurationSettingItem1;
$requestBody->setSettings($settingsArray);




$result = $graphServiceClient->deviceAppManagement()->mobileAppConfigurations()->byManagedDeviceMobileAppConfigurationId('managedDeviceMobileAppConfiguration-id')->patch($requestBody);


```