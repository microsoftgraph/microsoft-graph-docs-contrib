---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\ExternalPartners\Item\DeployAgent\DeployAgentPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeployAgentPostRequestBody();
$requestBody->setCloudPcIds(['30d0e128-de93-41dc-89ec-33d84bb662a0', '7c82a3e3-9459-44e4-94d9-b92f93bf78dd', 	]);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartners()->byCloudPcExternalPartnerId('cloudPcExternalPartner-id')->deployAgent()->post($requestBody)->wait();

```