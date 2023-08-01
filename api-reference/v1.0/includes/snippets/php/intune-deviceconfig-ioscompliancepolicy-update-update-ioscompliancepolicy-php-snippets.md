---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosCompliancePolicy();
$requestBody->setOdataType('#microsoft.graph.iosCompliancePolicy');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setPasscodeBlockSimple(true);

$requestBody->setPasscodeExpirationDays(6);

$requestBody->setPasscodeMinimumLength(5);

$requestBody->setPasscodeMinutesOfInactivityBeforeLock(5);

$requestBody->setPasscodePreviousPasscodeBlockCount(2);

$requestBody->setPasscodeMinimumCharacterSetCount(0);

$requestBody->setPasscodeRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setPasscodeRequired(true);

$requestBody->setOsMinimumVersion('Os Minimum Version value');

$requestBody->setOsMaximumVersion('Os Maximum Version value');

$requestBody->setSecurityBlockJailbrokenDevices(true);

$requestBody->setDeviceThreatProtectionEnabled(true);

$requestBody->setDeviceThreatProtectionRequiredSecurityLevel(new DeviceThreatProtectionLevel('secured'));

$requestBody->setManagedEmailProfileRequired(true);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->patch($requestBody);


```