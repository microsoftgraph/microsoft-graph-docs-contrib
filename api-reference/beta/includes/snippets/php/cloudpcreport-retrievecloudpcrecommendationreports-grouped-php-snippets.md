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
$requestBody->setSelect(['ServicePlanId', 'ServicePlanName', 'UsageInsight', 	]);
$requestBody->setGroupBy(['ServicePlanId', 'ServicePlanName', 'UsageInsight', 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->report()->retrieveCloudPcRecommendationReports()->post($requestBody)->wait();

```