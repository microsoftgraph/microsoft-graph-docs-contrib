---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Reports\RetrieveCrossRegionDisasterRecoveryReport\RetrieveCrossRegionDisasterRecoveryReportPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetrieveCrossRegionDisasterRecoveryReportPostRequestBody();
$requestBody->setFilter('DisasterRecoveryStatus eq \'Active outage\'');
$requestBody->setSelect(['Id', 'CloudPcId', 'UserId', 'UserSettingId', 'DeviceId', 'CloudPCDeviceDisplayName', 'UserPrincipalName', 'IsCrossRegionEnabled', 'CrossRegionHealthStatus', 'LicenseType', 'DisasterRecoveryStatus', 'CurrentRestorePointDateTime', 'ActivationExpirationDateTime', 	]);
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->retrieveCrossRegionDisasterRecoveryReport()->post($requestBody)->wait();

```