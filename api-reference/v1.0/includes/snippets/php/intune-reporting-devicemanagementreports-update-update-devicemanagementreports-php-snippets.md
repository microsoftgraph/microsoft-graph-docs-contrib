---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagementReports();
$requestBody->setOdataType('#microsoft.graph.deviceManagementReports');

$result = $graphServiceClient->deviceManagement()->reports()->patch($requestBody)->wait();

```