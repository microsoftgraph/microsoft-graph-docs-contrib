---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ResourceOperation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResourceOperation();
$requestBody->setOdataType('#microsoft.graph.resourceOperation');
$requestBody->setResourceName('Resource Name value');
$requestBody->setActionName('Action Name value');
$requestBody->setDescription('Description value');

$result = $graphServiceClient->deviceManagement()->resourceOperations()->byResourceOperationId('resourceOperation-id')->patch($requestBody)->wait();

```