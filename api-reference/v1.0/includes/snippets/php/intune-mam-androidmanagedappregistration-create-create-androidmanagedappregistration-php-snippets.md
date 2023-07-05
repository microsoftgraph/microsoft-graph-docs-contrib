---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AndroidManagedAppRegistration();
$requestBody->set@odatatype('#microsoft.graph.androidManagedAppRegistration');

$requestBody->setLastSyncDateTime(new DateTime('2017-01-01T00:02:49.3205976-08:00'));

$requestBody->setApplicationVersion('Application Version value');

$requestBody->setManagementSdkVersion('Management Sdk Version value');

$requestBody->setPlatformVersion('Platform Version value');

$requestBody->setDeviceType('Device Type value');

$requestBody->setDeviceTag('Device Tag value');

$requestBody->setDeviceName('Device Name value');

$requestBody->setFlaggedReasons([$requestBody->setManagedAppFlaggedReason(new ManagedAppFlaggedReason('rooteddevice'));
]);

$requestBody->setUserId('User Id value');

$appIdentifier = new AndroidMobileAppIdentifier();
$appIdentifier->set@odatatype('microsoft.graph.androidMobileAppIdentifier');

$appIdentifier->setPackageId('Package Id value');


$requestBody->setAppIdentifier($appIdentifier);
$requestBody->setVersion('Version value');



$result = $graphServiceClient->deviceAppManagement()->managedAppRegistrations()->post($requestBody);


```