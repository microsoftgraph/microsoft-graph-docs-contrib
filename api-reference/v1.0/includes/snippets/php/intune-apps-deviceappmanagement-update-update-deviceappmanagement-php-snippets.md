---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceAppManagement;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceAppManagement();
$requestBody->setOdataType('#microsoft.graph.deviceAppManagement');

$result = $graphServiceClient->deviceAppManagement()->patch($requestBody)->wait();

```