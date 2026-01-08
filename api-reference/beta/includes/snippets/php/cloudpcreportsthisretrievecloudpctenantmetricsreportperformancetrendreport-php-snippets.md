---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Reports\RetrieveCloudPcTenantMetricsReport\RetrieveCloudPcTenantMetricsReportPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPCPerformanceReportName;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetrieveCloudPcTenantMetricsReportPostRequestBody();
$requestBody->setReportName(new CloudPCPerformanceReportName('performanceTrendReport'));
$requestBody->setFilter('EventDateTime gt datetime\'2023-10-13T00:00:00.000Z\'');
$requestBody->setSelect(['EventDateTime', 'SlowRoundTripTimeCloudPcCount', 'LowUdpConnectionPercentageCount', 'NoActiveTimeConnectedCount', 'LowActiveTimeConnectedCount', 	]);
$requestBody->setSearch('');
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->retrieveCloudPcTenantMetricsReport()->post($requestBody)->wait();

```