---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CloudPcDeviceImage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcDeviceImage();
$requestBody->setDisplayName('ImageForDev');
$requestBody->setVersion('0.0.1');
$requestBody->setSourceImageResourceId('/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage');

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->deviceImages()->post($requestBody)->wait();

```