---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceAppManagement();
$requestBody->setOdataType('#microsoft.graph.deviceAppManagement');

$result = $graphServiceClient->deviceAppManagement()->patch($requestBody)->wait();

```