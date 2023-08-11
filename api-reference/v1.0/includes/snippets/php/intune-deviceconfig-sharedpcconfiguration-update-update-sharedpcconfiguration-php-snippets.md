---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharedPCConfiguration();
$requestBody->setOdataType('#microsoft.graph.sharedPCConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$accountManagerPolicy = new SharedPCAccountManagerPolicy();
$accountManagerPolicy->setOdataType('microsoft.graph.sharedPCAccountManagerPolicy');

$accountManagerPolicy->setAccountDeletionPolicy(new SharedPCAccountDeletionPolicyType('diskSpaceThreshold'));

$accountManagerPolicy->setCacheAccountsAboveDiskFreePercentage(4);

$accountManagerPolicy->setInactiveThresholdDays(5);

$accountManagerPolicy->setRemoveAccountsBelowDiskFreePercentage(5);


$requestBody->setAccountManagerPolicy($accountManagerPolicy);
$requestBody->setAllowedAccounts(new SharedPCAllowedAccountType('domain'));

$requestBody->setAllowLocalStorage(true);

$requestBody->setDisableAccountManager(true);

$requestBody->setDisableEduPolicies(true);

$requestBody->setDisablePowerPolicies(true);

$requestBody->setDisableSignInOnResume(true);

$requestBody->setEnabled(true);

$requestBody->setIdleTimeBeforeSleepInSeconds(12);

$requestBody->setKioskAppDisplayName('Kiosk App Display Name value');

$requestBody->setKioskAppUserModelId('Kiosk App User Model Id value');

$requestBody->setMaintenanceStartTime(new Time('11:59:24.7240000'));



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody);


```