---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Device;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Device();
$requestBody->setAccountEnabled(false);

$result = $graphServiceClient->devices()->byDeviceId('device-id')->patch($requestBody)->wait();

```