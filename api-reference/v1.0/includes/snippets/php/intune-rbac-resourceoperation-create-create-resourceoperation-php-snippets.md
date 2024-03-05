---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResourceOperation();
$requestBody->setOdataType('#microsoft.graph.resourceOperation');
$requestBody->setResourceName('Resource Name value');
$requestBody->setActionName('Action Name value');
$requestBody->setDescription('Description value');

$result = $graphServiceClient->deviceManagement()->resourceOperations()->post($requestBody)->wait();

```