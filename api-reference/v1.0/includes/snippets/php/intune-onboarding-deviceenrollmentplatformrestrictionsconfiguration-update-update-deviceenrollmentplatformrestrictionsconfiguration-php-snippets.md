---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceEnrollmentPlatformRestrictionsConfiguration();
$requestBody->setOdataType('#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setPriority(8);

$requestBody->setVersion(7);

$iosRestriction = new DeviceEnrollmentPlatformRestriction();
$iosRestriction->setOdataType('microsoft.graph.deviceEnrollmentPlatformRestriction');

$iosRestriction->setPlatformBlocked(true);

$iosRestriction->setPersonalDeviceEnrollmentBlocked(true);

$iosRestriction->setOsMinimumVersion('Os Minimum Version value');

$iosRestriction->setOsMaximumVersion('Os Maximum Version value');


$requestBody->setIosRestriction($iosRestriction);
$windowsRestriction = new DeviceEnrollmentPlatformRestriction();
$windowsRestriction->setOdataType('microsoft.graph.deviceEnrollmentPlatformRestriction');

$windowsRestriction->setPlatformBlocked(true);

$windowsRestriction->setPersonalDeviceEnrollmentBlocked(true);

$windowsRestriction->setOsMinimumVersion('Os Minimum Version value');

$windowsRestriction->setOsMaximumVersion('Os Maximum Version value');


$requestBody->setWindowsRestriction($windowsRestriction);
$windowsMobileRestriction = new DeviceEnrollmentPlatformRestriction();
$windowsMobileRestriction->setOdataType('microsoft.graph.deviceEnrollmentPlatformRestriction');

$windowsMobileRestriction->setPlatformBlocked(true);

$windowsMobileRestriction->setPersonalDeviceEnrollmentBlocked(true);

$windowsMobileRestriction->setOsMinimumVersion('Os Minimum Version value');

$windowsMobileRestriction->setOsMaximumVersion('Os Maximum Version value');


$requestBody->setWindowsMobileRestriction($windowsMobileRestriction);
$androidRestriction = new DeviceEnrollmentPlatformRestriction();
$androidRestriction->setOdataType('microsoft.graph.deviceEnrollmentPlatformRestriction');

$androidRestriction->setPlatformBlocked(true);

$androidRestriction->setPersonalDeviceEnrollmentBlocked(true);

$androidRestriction->setOsMinimumVersion('Os Minimum Version value');

$androidRestriction->setOsMaximumVersion('Os Maximum Version value');


$requestBody->setAndroidRestriction($androidRestriction);
$macOSRestriction = new DeviceEnrollmentPlatformRestriction();
$macOSRestriction->setOdataType('microsoft.graph.deviceEnrollmentPlatformRestriction');

$macOSRestriction->setPlatformBlocked(true);

$macOSRestriction->setPersonalDeviceEnrollmentBlocked(true);

$macOSRestriction->setOsMinimumVersion('Os Minimum Version value');

$macOSRestriction->setOsMaximumVersion('Os Maximum Version value');


$requestBody->setMacOSRestriction($macOSRestriction);


$result = $graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->byDeviceEnrollmentConfigurationId('deviceEnrollmentConfiguration-id')->patch($requestBody);


```