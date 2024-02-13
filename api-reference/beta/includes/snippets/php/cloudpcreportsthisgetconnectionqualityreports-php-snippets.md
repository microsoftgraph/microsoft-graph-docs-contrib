---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetConnectionQualityReportsPostRequestBody();
$requestBody->setFilter('EventDateTime gt datetime\'2023-04-16T07:40:41.694Z\'');
$requestBody->setSearch('');
$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'AvgRoundTripTimeInMsP50', 'LastConnectionRoundTripTimeInMs', 'AvgAvailableBandwidthInMBpsP50', 'LastConnectionAvailableBandWidthInMSps', 'AvgRemoteSignInTimeInSecP50', 'UDPConnectionPercentage', 'LastConnectionGateway', 'LastConnectionProtocol', 'EventDateTime', 	]);
$requestBody->setSkip(0);
$requestBody->setTop(25);
$requestBody->setOrderBy([	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getConnectionQualityReports()->post($requestBody)->wait();

```