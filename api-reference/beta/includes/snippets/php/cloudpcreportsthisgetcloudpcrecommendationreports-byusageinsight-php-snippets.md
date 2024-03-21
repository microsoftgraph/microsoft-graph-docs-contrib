---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetCloudPcRecommendationReportsPostRequestBody();
$requestBody->setReportName(new CloudPcReportName('cloudPcUsageCategoryReports'));
$requestBody->setSelect(['UsageInsight', 	]);
$requestBody->setGroupBy(['UsageInsight', 	]);
$requestBody->setFilter('');

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getCloudPcRecommendationReports()->post($requestBody)->wait();

```