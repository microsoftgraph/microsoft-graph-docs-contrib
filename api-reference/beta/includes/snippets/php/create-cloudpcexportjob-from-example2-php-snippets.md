---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcExportJob;
use Microsoft\Graph\Beta\Generated\Models\CloudPcReportName;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcExportJob();
$requestBody->setReportName(new CloudPcReportName('remoteConnectionQualityReports'));
$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'AvgRoundTripTimeInMsP50', 'LastConnectionRoundTripTimeInMs', 'AvgAvailableBandwidthInMBpsP50', 'LastConnectionAvailableBandWidthInMSps', 'AvgRemoteSignInTimeInSecP50', 'UDPConnectionPercentage', 'LastConnectionGateway', 'LastConnectionProtocol', 'EventDateTime', 	]);
$requestBody->setFilter('EventDateTime gt datetime\'2023-06-14T07:40:41.694Z\'');

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->exportJobs()->post($requestBody)->wait();

```