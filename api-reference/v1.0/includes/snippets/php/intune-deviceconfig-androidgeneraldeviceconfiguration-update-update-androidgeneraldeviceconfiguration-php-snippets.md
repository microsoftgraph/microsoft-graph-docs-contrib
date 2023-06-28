---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AndroidGeneralDeviceConfiguration();
$requestBody->set@odatatype('#microsoft.graph.androidGeneralDeviceConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setAppsBlockClipboardSharing(true);

$requestBody->setAppsBlockCopyPaste(true);

$requestBody->setAppsBlockYouTube(true);

$requestBody->setBluetoothBlocked(true);

$requestBody->setCameraBlocked(true);

$requestBody->setCellularBlockDataRoaming(true);

$requestBody->setCellularBlockMessaging(true);

$requestBody->setCellularBlockVoiceRoaming(true);

$requestBody->setCellularBlockWiFiTethering(true);

$compliantAppsListAppListItem1 = new AppListItem();
$compliantAppsListAppListItem1->set@odatatype('microsoft.graph.appListItem');

$compliantAppsListAppListItem1->setName('Name value');

$compliantAppsListAppListItem1->setPublisher('Publisher value');

$compliantAppsListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$compliantAppsListAppListItem1->setAppId('App Id value');


$compliantAppsListArray []= $compliantAppsListAppListItem1;
$requestBody->setCompliantAppsList($compliantAppsListArray);


$requestBody->setCompliantAppListType(new AppListType('appsinlistcompliant'));

$requestBody->setDiagnosticDataBlockSubmission(true);

$requestBody->setLocationServicesBlocked(true);

$requestBody->setGoogleAccountBlockAutoSync(true);

$requestBody->setGooglePlayStoreBlocked(true);

$requestBody->setKioskModeBlockSleepButton(true);

$requestBody->setKioskModeBlockVolumeButtons(true);

$kioskModeAppsAppListItem1 = new AppListItem();
$kioskModeAppsAppListItem1->set@odatatype('microsoft.graph.appListItem');

$kioskModeAppsAppListItem1->setName('Name value');

$kioskModeAppsAppListItem1->setPublisher('Publisher value');

$kioskModeAppsAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$kioskModeAppsAppListItem1->setAppId('App Id value');


$kioskModeAppsArray []= $kioskModeAppsAppListItem1;
$requestBody->setKioskModeApps($kioskModeAppsArray);


$requestBody->setNfcBlocked(true);

$requestBody->setPasswordBlockFingerprintUnlock(true);

$requestBody->setPasswordBlockTrustAgents(true);

$requestBody->setPasswordExpirationDays(6);

$requestBody->setPasswordMinimumLength(5);

$requestBody->setPasswordMinutesOfInactivityBeforeScreenTimeout(14);

$requestBody->setPasswordPreviousPasswordBlockCount(2);

$requestBody->setPasswordSignInFailureCountBeforeFactoryReset(12);

$requestBody->setPasswordRequiredType(new AndroidRequiredPasswordType('alphabetic'));

$requestBody->setPasswordRequired(true);

$requestBody->setPowerOffBlocked(true);

$requestBody->setFactoryResetBlocked(true);

$requestBody->setScreenCaptureBlocked(true);

$requestBody->setDeviceSharingAllowed(true);

$requestBody->setStorageBlockGoogleBackup(true);

$requestBody->setStorageBlockRemovableStorage(true);

$requestBody->setStorageRequireDeviceEncryption(true);

$requestBody->setStorageRequireRemovableStorageEncryption(true);

$requestBody->setVoiceAssistantBlocked(true);

$requestBody->setVoiceDialingBlocked(true);

$requestBody->setWebBrowserBlockPopups(true);

$requestBody->setWebBrowserBlockAutofill(true);

$requestBody->setWebBrowserBlockJavaScript(true);

$requestBody->setWebBrowserBlocked(true);

$requestBody->setWebBrowserCookieSettings(new WebBrowserCookieSettings('blockalways'));

$requestBody->setWiFiBlocked(true);

$appsInstallAllowListAppListItem1 = new AppListItem();
$appsInstallAllowListAppListItem1->set@odatatype('microsoft.graph.appListItem');

$appsInstallAllowListAppListItem1->setName('Name value');

$appsInstallAllowListAppListItem1->setPublisher('Publisher value');

$appsInstallAllowListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$appsInstallAllowListAppListItem1->setAppId('App Id value');


$appsInstallAllowListArray []= $appsInstallAllowListAppListItem1;
$requestBody->setAppsInstallAllowList($appsInstallAllowListArray);


$appsLaunchBlockListAppListItem1 = new AppListItem();
$appsLaunchBlockListAppListItem1->set@odatatype('microsoft.graph.appListItem');

$appsLaunchBlockListAppListItem1->setName('Name value');

$appsLaunchBlockListAppListItem1->setPublisher('Publisher value');

$appsLaunchBlockListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$appsLaunchBlockListAppListItem1->setAppId('App Id value');


$appsLaunchBlockListArray []= $appsLaunchBlockListAppListItem1;
$requestBody->setAppsLaunchBlockList($appsLaunchBlockListArray);


$appsHideListAppListItem1 = new AppListItem();
$appsHideListAppListItem1->set@odatatype('microsoft.graph.appListItem');

$appsHideListAppListItem1->setName('Name value');

$appsHideListAppListItem1->setPublisher('Publisher value');

$appsHideListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$appsHideListAppListItem1->setAppId('App Id value');


$appsHideListArray []= $appsHideListAppListItem1;
$requestBody->setAppsHideList($appsHideListArray);


$requestBody->setSecurityRequireVerifyApps(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody);


```