---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Windows10CompliancePolicy();
$requestBody->set@odatatype('#microsoft.graph.windows10CompliancePolicy');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setPasswordRequired(true);

$requestBody->setPasswordBlockSimple(true);

$requestBody->setPasswordRequiredToUnlockFromIdle(true);

$requestBody->setPasswordMinutesOfInactivityBeforeLock(5);

$requestBody->setPasswordExpirationDays(6);

$requestBody->setPasswordMinimumLength(5);

$requestBody->setPasswordMinimumCharacterSetCount(0);

$requestBody->setPasswordRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setPasswordPreviousPasswordBlockCount(2);

$requestBody->setRequireHealthyDeviceReport(true);

$requestBody->setOsMinimumVersion('Os Minimum Version value');

$requestBody->setOsMaximumVersion('Os Maximum Version value');

$requestBody->setMobileOsMinimumVersion('Mobile Os Minimum Version value');

$requestBody->setMobileOsMaximumVersion('Mobile Os Maximum Version value');

$requestBody->setEarlyLaunchAntiMalwareDriverEnabled(true);

$requestBody->setBitLockerEnabled(true);

$requestBody->setSecureBootEnabled(true);

$requestBody->setCodeIntegrityEnabled(true);

$requestBody->setStorageRequireEncryption(true);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->post($requestBody);


```