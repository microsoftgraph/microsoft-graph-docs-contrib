---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Reports\RetrieveCloudPcTroubleshootReports\RetrieveCloudPcTroubleshootReportsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPCTroubleshootReportType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetrieveCloudPcTroubleshootReportsPostRequestBody();
$requestBody->setReportName(new CloudPCTroubleshootReportType('troubleshootDetailsReport'));
$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'UsageInsight', 'CurrentSize', 'CurrentCPU', 'CurrentRamInGB', 'CurrentDiskInGB', 'RecommendedSize', 'RecommendedCPU', 'RecommendedRamInGB', 'RecommendedDiskInGB', 'ProvisionPolicyName', 'RoundTripTimeInMsAvg', 'AvailableBandwidthInMbpsAvg', 	]);
$requestBody->setSearch('');
$requestBody->setSkip(0);
$requestBody->setTop(50);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->retrieveCloudPcTroubleshootReports()->post($requestBody)->wait();

```