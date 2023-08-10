---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceEnrollmentWindowsHelloForBusinessConfiguration();
$requestBody->setOdataType('#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setPriority(8);

$requestBody->setVersion(7);

$requestBody->setPinMinimumLength(0);

$requestBody->setPinMaximumLength(0);

$requestBody->setPinUppercaseCharactersUsage(new WindowsHelloForBusinessPinUsage('required'));

$requestBody->setPinLowercaseCharactersUsage(new WindowsHelloForBusinessPinUsage('required'));

$requestBody->setPinSpecialCharactersUsage(new WindowsHelloForBusinessPinUsage('required'));

$requestBody->setState(new Enablement('enabled'));

$requestBody->setSecurityDeviceRequired(true);

$requestBody->setUnlockWithBiometricsEnabled(true);

$requestBody->setRemotePassportEnabled(true);

$requestBody->setPinPreviousBlockCount(5);

$requestBody->setPinExpirationInDays(3);

$requestBody->setEnhancedBiometricsState(new Enablement('enabled'));



$result = $graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->post($requestBody);


```