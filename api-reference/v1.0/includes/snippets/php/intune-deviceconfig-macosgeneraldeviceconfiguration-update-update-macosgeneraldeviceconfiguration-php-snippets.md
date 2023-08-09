---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MacOSGeneralDeviceConfiguration();
$requestBody->setOdataType('#microsoft.graph.macOSGeneralDeviceConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$compliantAppsListAppListItem1 = new AppListItem();
$compliantAppsListAppListItem1->setOdataType('microsoft.graph.appListItem');

$compliantAppsListAppListItem1->setName('Name value');

$compliantAppsListAppListItem1->setPublisher('Publisher value');

$compliantAppsListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$compliantAppsListAppListItem1->setAppId('App Id value');


$compliantAppsListArray []= $compliantAppsListAppListItem1;
$requestBody->setCompliantAppsList($compliantAppsListArray);


$requestBody->setCompliantAppListType(new AppListType('appsInListCompliant'));

$requestBody->setEmailInDomainSuffixes(['Email In Domain Suffixes value', ]);

$requestBody->setPasswordBlockSimple(true);

$requestBody->setPasswordExpirationDays(6);

$requestBody->setPasswordMinimumCharacterSetCount(0);

$requestBody->setPasswordMinimumLength(5);

$requestBody->setPasswordMinutesOfInactivityBeforeLock(5);

$requestBody->setPasswordMinutesOfInactivityBeforeScreenTimeout(14);

$requestBody->setPasswordPreviousPasswordBlockCount(2);

$requestBody->setPasswordRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setPasswordRequired(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody);


```