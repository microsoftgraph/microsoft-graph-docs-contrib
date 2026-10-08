---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Report\RetrieveCloudPcClientAppUsageReport\RetrieveCloudPcClientAppUsageReportPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcClientAppUsageReportType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetrieveCloudPcClientAppUsageReportPostRequestBody();
$requestBody->setFilter('');
$requestBody->setReportType(new CloudPcClientAppUsageReportType('microsoftRemoteDesktopClientUsageReport'));
$requestBody->setSelect(['UPN', 'LastSignOn', 'DaysWithUsage', 	]);
$requestBody->setSearch('');
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->report()->retrieveCloudPcClientAppUsageReport()->post($requestBody)->wait();

```