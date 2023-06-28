---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Windows81GeneralConfiguration();
$requestBody->set@odatatype('#microsoft.graph.windows81GeneralConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setAccountsBlockAddingNonMicrosoftAccountEmail(true);

$requestBody->setApplyOnlyToWindows81(true);

$requestBody->setBrowserBlockAutofill(true);

$requestBody->setBrowserBlockAutomaticDetectionOfIntranetSites(true);

$requestBody->setBrowserBlockEnterpriseModeAccess(true);

$requestBody->setBrowserBlockJavaScript(true);

$requestBody->setBrowserBlockPlugins(true);

$requestBody->setBrowserBlockPopups(true);

$requestBody->setBrowserBlockSendingDoNotTrackHeader(true);

$requestBody->setBrowserBlockSingleWordEntryOnIntranetSites(true);

$requestBody->setBrowserRequireSmartScreen(true);

$requestBody->setBrowserEnterpriseModeSiteListLocation('Browser Enterprise Mode Site List Location value');

$requestBody->setBrowserInternetSecurityLevel(new InternetSiteSecurityLevel('medium'));

$requestBody->setBrowserIntranetSecurityLevel(new SiteSecurityLevel('low'));

$requestBody->setBrowserLoggingReportLocation('Browser Logging Report Location value');

$requestBody->setBrowserRequireHighSecurityForRestrictedSites(true);

$requestBody->setBrowserRequireFirewall(true);

$requestBody->setBrowserRequireFraudWarning(true);

$requestBody->setBrowserTrustedSitesSecurityLevel(new SiteSecurityLevel('low'));

$requestBody->setCellularBlockDataRoaming(true);

$requestBody->setDiagnosticsBlockDataSubmission(true);

$requestBody->setPasswordBlockPicturePasswordAndPin(true);

$requestBody->setPasswordExpirationDays(6);

$requestBody->setPasswordMinimumLength(5);

$requestBody->setPasswordMinutesOfInactivityBeforeScreenTimeout(14);

$requestBody->setPasswordMinimumCharacterSetCount(0);

$requestBody->setPasswordPreviousPasswordBlockCount(2);

$requestBody->setPasswordRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setPasswordSignInFailureCountBeforeFactoryReset(12);

$requestBody->setStorageRequireDeviceEncryption(true);

$requestBody->setUpdatesRequireAutomaticUpdates(true);

$requestBody->setUserAccountControlSettings(new WindowsUserAccountControlSettings('alwaysnotify'));

$requestBody->setWorkFoldersUrl('https://example.com/workFoldersUrl/');



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```