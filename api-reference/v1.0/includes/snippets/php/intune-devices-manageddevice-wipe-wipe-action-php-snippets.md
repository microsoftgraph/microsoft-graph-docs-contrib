---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WipePostRequestBody();
$requestBody->setKeepEnrollmentData(true);
$requestBody->setKeepUserData(true);
$requestBody->setMacOsUnlockCode('Mac Os Unlock Code value');
$requestBody->setPersistEsimDataPlan(true);

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->wipe()->post($requestBody)->wait();

```