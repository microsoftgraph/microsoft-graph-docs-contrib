---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceManagementReports;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagementReports();
$requestBody->setOdataType('#microsoft.graph.deviceManagementReports');

$result = $graphServiceClient->deviceManagement()->reports()->patch($requestBody)->wait();

```