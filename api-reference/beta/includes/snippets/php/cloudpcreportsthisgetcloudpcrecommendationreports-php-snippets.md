---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetCloudPcRecommendationReportsPostRequestBody();
$requestBody->setReportName(new CloudPcReportName('cloudPcUsageCategoryReports'));
$requestBody->setTop(50);
$requestBody->setSkip(0);
$requestBody->setSearch('');
$requestBody->setFilter('');
$requestBody->setSelect(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'UsageInsight', 'CurrentSize', 'RecommendedSize', 'UsageInHour', 'DevicePerfSummary', 	]);
$requestBody->setOrderBy(['ManagedDeviceName', 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getCloudPcRecommendationReports()->post($requestBody)->wait();

```