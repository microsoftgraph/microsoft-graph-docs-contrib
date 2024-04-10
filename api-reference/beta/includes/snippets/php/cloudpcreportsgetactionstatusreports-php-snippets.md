---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetActionStatusReportsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetActionStatusReportsPostRequestBody();
$requestBody->setFilter('ActionState eq \'failed\'');
$requestBody->setSelect(['Id', 'CloudPcDeviceDisplayName', 'BulkActionId', 'BulkActionDisplayName', 'CloudPcId', 'InitiatedByUserPrincipalName', 'DeviceOwnerUserPrincipalName', 'Action', 'ActionState', 'RequestDateTime', 'LastUpdatedDateTime', 'ActionParameters', 	]);
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getActionStatusReports()->post($requestBody)->wait();

```