---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Reports\GetRawRemoteConnectionReports\GetRawRemoteConnectionReportsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetRawRemoteConnectionReportsPostRequestBody();
$requestBody->setFilter('ActivityId eq \'cb6ad4c4-8a17-4245-a644-e4436b1ee204\'');
$requestBody->setSelect(['RoundTripTimeInMs', 'AvailableBandwidthInMbps', 'SignInDateTime', 	]);
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getRawRemoteConnectionReports()->post($requestBody)->wait();

```