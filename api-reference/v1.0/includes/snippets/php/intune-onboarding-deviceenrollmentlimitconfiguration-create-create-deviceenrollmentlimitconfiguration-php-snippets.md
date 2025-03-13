---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceEnrollmentLimitConfiguration;


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