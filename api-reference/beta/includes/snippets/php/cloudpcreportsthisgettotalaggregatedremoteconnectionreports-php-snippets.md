---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Reports\GetTotalAggregatedRemoteConnectionReports\GetTotalAggregatedRemoteConnectionReportsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetTotalAggregatedRemoteConnectionReportsPostRequestBody();
$requestBody->setTop(25);
$requestBody->setSkip(0);
$requestBody->setFilter('(TotalUsageInHour ge 40 and TotalUsageInHour le 80)');
$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'TotalUsageInHour', 'LastActiveTime', 'PcType', 'CreatedDate', 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getTotalAggregatedRemoteConnectionReports()->post($requestBody)->wait();

```