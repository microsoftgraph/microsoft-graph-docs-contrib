---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcBulkAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcBulkAction();
$requestBody->setOdataType('#microsoft.graph.cloudPcBulkAction');
$requestBody->setCloudPcIds(['30d0e128-de93-41dc-89ec-33d84bb662a0', '7c82a3e3-9459-44e4-94d9-b92f93bf78dd', 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->bulkActions()->byCloudPcBulkActionId('cloudPcBulkAction-id')->retry()->post($requestBody)->wait();

```