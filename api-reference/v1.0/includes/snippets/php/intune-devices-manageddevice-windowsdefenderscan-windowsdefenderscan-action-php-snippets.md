---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsDefenderScanPostRequestBody();
$requestBody->setQuickScan(true);

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->windowsDefenderScan()->post($requestBody)->wait();

```