---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DetectedApp;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DetectedApp();
$requestBody->setOdataType('#microsoft.graph.detectedApp');
$requestBody->setDisplayName('Display Name value');
$requestBody->setVersion('Version value');
$requestBody->setSizeInByte(10);
$requestBody->setDeviceCount(11);
$requestBody->setPublisher('Publisher value');
$requestBody->setPlatform(new DetectedAppPlatformType('windows'));

$result = $graphServiceClient->deviceManagement()->detectedApps()->post($requestBody)->wait();

```