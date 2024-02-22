---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagement();
$requestBody->setOdataType('#microsoft.graph.deviceManagement');

$result = $graphServiceClient->deviceManagement()->patch($requestBody)->wait();

```