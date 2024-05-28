---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceManagement;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagement();
$requestBody->setOdataType('#microsoft.graph.deviceManagement');

$result = $graphServiceClient->deviceManagement()->patch($requestBody)->wait();

```