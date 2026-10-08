---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetSharePointApiUsage(period='{period}',appId='{appId}',reportType='@reportType')\GetSharePointApiUsageWithPeriodWithAppIdreportType='@reportType'RequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetSharePointApiUsageWithPeriodWithAppIdreportType='@reportType'RequestBuilderGetRequestConfiguration();
$queryParameters = GetSharePointApiUsageWithPeriodWithAppIdreportType='@reportType'RequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getSharePointApiUsageWithPeriodWithAppId('{appId}', '{period}', )->get($requestConfiguration)->wait();

```