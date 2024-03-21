---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceCategory();
$requestBody->setOdataType('#microsoft.graph.deviceCategory');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');

$result = $graphServiceClient->deviceManagement()->deviceCategories()->post($requestBody)->wait();

```