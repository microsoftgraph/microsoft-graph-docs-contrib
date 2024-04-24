---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetTotalAggregatedRemoteConnectionReportsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetTotalAggregatedRemoteConnectionReportsPostRequestBody();
$requestBody->setTop(25);
$requestBody->setSkip(0);
$requestBody->setFilter('(TotalUsageInHour ge 40 and TotalUsageInHour le 80)');
$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'TotalUsageInHour', 'LastActiveTime', 'PcType', 'CreatedDate' 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getTotalAggregatedRemoteConnectionReports()->post($requestBody)->wait();

```