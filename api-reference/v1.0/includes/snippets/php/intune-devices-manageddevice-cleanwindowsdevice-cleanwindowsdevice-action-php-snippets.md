---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CleanWindowsDevicePostRequestBody();
$requestBody->setKeepUserData(true);

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->cleanWindowsDevice()->post($requestBody)->wait();

```