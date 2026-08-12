---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetSharePointApiUsage(date={date},appId='{appId}',reportType='@reportType')\GetSharePointApiUsageWithDateWithAppIdreportType='@reportType'RequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetSharePointApiUsageWithDateWithAppIdreportType='@reportType'RequestBuilderGetRequestConfiguration();
$queryParameters = GetSharePointApiUsageWithDateWithAppIdreportType='@reportType'RequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getSharePointApiUsageWithDateWithAppId('{appId}', new \DateTime('{date}'))->get($requestConfiguration)->wait();

```