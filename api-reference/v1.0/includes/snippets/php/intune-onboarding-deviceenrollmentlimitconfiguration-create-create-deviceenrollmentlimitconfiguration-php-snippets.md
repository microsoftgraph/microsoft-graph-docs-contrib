---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceEnrollmentLimitConfiguration();
$requestBody->setOdataType('#microsoft.graph.deviceEnrollmentLimitConfiguration');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');
$requestBody->setPriority(8);
$requestBody->setVersion(7);
$requestBody->setLimit(5);

$result = $graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->post($requestBody)->wait();

```