---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetM365AppPlatformUserCounts(period='{period}')\GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getM365AppPlatformUserCountsWithPeriod('{period}', )->get($requestConfiguration)->wait();

```