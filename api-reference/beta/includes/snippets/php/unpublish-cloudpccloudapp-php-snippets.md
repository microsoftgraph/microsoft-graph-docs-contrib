---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\CloudApps\Unpublish\UnpublishPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnpublishPostRequestBody();
$requestBody->setCloudAppIds(['30d0e128-de93-41dc-89ec-33d84bb662a0', '40d0e128-de93-41dc-89ec-33d84bb662a0', 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudApps()->unpublish()->post($requestBody)->wait();

```