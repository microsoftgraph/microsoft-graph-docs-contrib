---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceCategory();
$requestBody->setOdataType('#microsoft.graph.deviceCategory');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');

$result = $graphServiceClient->deviceManagement()->deviceCategories()->byDeviceCategoryId('deviceCategory-id')->patch($requestBody)->wait();

```