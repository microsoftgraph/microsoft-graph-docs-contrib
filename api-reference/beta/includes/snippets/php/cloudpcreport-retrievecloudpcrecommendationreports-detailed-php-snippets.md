---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Report\RetrieveCloudPcRecommendationReports\RetrieveCloudPcRecommendationReportsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcRecommendationReportType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetrieveCloudPcRecommendationReportsPostRequestBody();
$requestBody->setReportType(new CloudPcRecommendationReportType('cloudPcUsageCategoryReport'));
$requestBody->setFilter('');
$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'ServicePlanId', 'ServicePlanName', 'UsageInsight', 'RecommendedPlanId', 'RecommendedPlanName', 	]);
$requestBody->setSearch('');
$requestBody->setSkip(0);
$requestBody->setTop(15);

$graphServiceClient->deviceManagement()->virtualEndpoint()->report()->retrieveCloudPcRecommendationReports()->post($requestBody)->wait();

```