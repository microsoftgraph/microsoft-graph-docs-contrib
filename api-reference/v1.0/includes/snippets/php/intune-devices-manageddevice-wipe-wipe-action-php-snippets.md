---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WipePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WipePostRequestBody();
$requestBody->setKeepEnrollmentData(true);
$requestBody->setKeepUserData(true);
$requestBody->setMacOsUnlockCode('Mac Os Unlock Code value');
$requestBody->setPersistEsimDataPlan(true);

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->wipe()->post($requestBody)->wait();

```