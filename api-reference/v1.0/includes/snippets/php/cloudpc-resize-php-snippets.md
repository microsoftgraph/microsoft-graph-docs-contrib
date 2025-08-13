---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\DeviceManagement\VirtualEndpoint\CloudPCs\Item\Resize\ResizePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResizePostRequestBody();
$requestBody->setTargetServicePlanId('30d0e128-de93-41dc-89ec-33d84bb662a0');

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->resize()->post($requestBody)->wait();

```