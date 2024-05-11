---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CloudPcBulkAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcBulkAction();
$requestBody->setOdataType('#microsoft.graph.cloudPcBulkAction');
$requestBody->setDisplayName('Bulk Power Off by Andy');
$requestBody->setCloudPcIds(['d6e0b8ee-8836-4b8d-b038-6130a97a3a9d', '85994912-197b-4927-b569-447bd81350ec', 	]);
$requestBody->setScheduledDuringMaintenanceWindow(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->bulkActions()->post($requestBody)->wait();

```