---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MacOSCompliancePolicy();
$requestBody->set@odatatype('#microsoft.graph.macOSCompliancePolicy');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setPasswordRequired(true);

$requestBody->setPasswordBlockSimple(true);

$requestBody->setPasswordExpirationDays(6);

$requestBody->setPasswordMinimumLength(5);

$requestBody->setPasswordMinutesOfInactivityBeforeLock(5);

$requestBody->setPasswordPreviousPasswordBlockCount(2);

$requestBody->setPasswordMinimumCharacterSetCount(0);

$requestBody->setPasswordRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setOsMinimumVersion('Os Minimum Version value');

$requestBody->setOsMaximumVersion('Os Maximum Version value');

$requestBody->setSystemIntegrityProtectionEnabled(true);

$requestBody->setDeviceThreatProtectionEnabled(true);

$requestBody->setDeviceThreatProtectionRequiredSecurityLevel(new DeviceThreatProtectionLevel('secured'));

$requestBody->setStorageRequireEncryption(true);

$requestBody->setFirewallEnabled(true);

$requestBody->setFirewallBlockAllIncoming(true);

$requestBody->setFirewallEnableStealthMode(true);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->post($requestBody);


```