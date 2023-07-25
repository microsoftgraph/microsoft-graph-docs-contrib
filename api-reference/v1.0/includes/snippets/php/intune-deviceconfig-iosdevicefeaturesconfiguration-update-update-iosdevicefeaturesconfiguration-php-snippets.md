---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IosDeviceFeaturesConfiguration();
$requestBody->set@odatatype('#microsoft.graph.iosDeviceFeaturesConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setAssetTagTemplate('Asset Tag Template value');

$requestBody->setLockScreenFootnote('Lock Screen Footnote value');

$homeScreenDockIconsIosHomeScreenItem1 = new IosHomeScreenFolder();
$homeScreenDockIconsIosHomeScreenItem1->set@odatatype('microsoft.graph.iosHomeScreenFolder');

$homeScreenDockIconsIosHomeScreenItem1->setDisplayName('Display Name value');

$pagesIosHomeScreenFolderPage1 = new IosHomeScreenFolderPage();
$pagesIosHomeScreenFolderPage1->set@odatatype('microsoft.graph.iosHomeScreenFolderPage');

$pagesIosHomeScreenFolderPage1->setDisplayName('Display Name value');

$appsIosHomeScreenApp1 = new IosHomeScreenApp();
$appsIosHomeScreenApp1->set@odatatype('microsoft.graph.iosHomeScreenApp');

$appsIosHomeScreenApp1->setDisplayName('Display Name value');

$appsIosHomeScreenApp1->setBundleID('Bundle ID value');


$appsArray []= $appsIosHomeScreenApp1;
$pagesIosHomeScreenFolderPage1->setApps($appsArray);



$pagesArray []= $pagesIosHomeScreenFolderPage1;
$homeScreenDockIconsIosHomeScreenItem1->setPages($pagesArray);



$homeScreenDockIconsArray []= $homeScreenDockIconsIosHomeScreenItem1;
$requestBody->setHomeScreenDockIcons($homeScreenDockIconsArray);


$homeScreenPagesIosHomeScreenPage1 = new IosHomeScreenPage();
$homeScreenPagesIosHomeScreenPage1->set@odatatype('microsoft.graph.iosHomeScreenPage');

$homeScreenPagesIosHomeScreenPage1->setDisplayName('Display Name value');

$iconsIosHomeScreenItem1 = new IosHomeScreenFolder();
$iconsIosHomeScreenItem1->set@odatatype('microsoft.graph.iosHomeScreenFolder');

$iconsIosHomeScreenItem1->setDisplayName('Display Name value');

$pagesIosHomeScreenFolderPage1 = new IosHomeScreenFolderPage();
$pagesIosHomeScreenFolderPage1->set@odatatype('microsoft.graph.iosHomeScreenFolderPage');

$pagesIosHomeScreenFolderPage1->setDisplayName('Display Name value');

$appsIosHomeScreenApp1 = new IosHomeScreenApp();
$appsIosHomeScreenApp1->set@odatatype('microsoft.graph.iosHomeScreenApp');

$appsIosHomeScreenApp1->setDisplayName('Display Name value');

$appsIosHomeScreenApp1->setBundleID('Bundle ID value');


$appsArray []= $appsIosHomeScreenApp1;
$pagesIosHomeScreenFolderPage1->setApps($appsArray);



$pagesArray []= $pagesIosHomeScreenFolderPage1;
$iconsIosHomeScreenItem1->setPages($pagesArray);



$iconsArray []= $iconsIosHomeScreenItem1;
$homeScreenPagesIosHomeScreenPage1->setIcons($iconsArray);



$homeScreenPagesArray []= $homeScreenPagesIosHomeScreenPage1;
$requestBody->setHomeScreenPages($homeScreenPagesArray);


$notificationSettingsIosNotificationSettings1 = new IosNotificationSettings();
$notificationSettingsIosNotificationSettings1->set@odatatype('microsoft.graph.iosNotificationSettings');

$notificationSettingsIosNotificationSettings1->setBundleID('Bundle ID value');

$notificationSettingsIosNotificationSettings1->setAppName('App Name value');

$notificationSettingsIosNotificationSettings1->setPublisher('Publisher value');

$notificationSettingsIosNotificationSettings1->setEnabled(true);

$notificationSettingsIosNotificationSettings1->setShowInNotificationCenter(true);

$notificationSettingsIosNotificationSettings1->setShowOnLockScreen(true);

$notificationSettingsIosNotificationSettings1->setAlertType(new IosNotificationAlertType('banner'));

$notificationSettingsIosNotificationSettings1->setBadgesEnabled(true);

$notificationSettingsIosNotificationSettings1->setSoundsEnabled(true);


$notificationSettingsArray []= $notificationSettingsIosNotificationSettings1;
$requestBody->setNotificationSettings($notificationSettingsArray);




$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody);


```