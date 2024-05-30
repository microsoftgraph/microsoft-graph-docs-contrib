---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Reports\GetM365AppPlatformUserCounts(period='{period}')\GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getM365AppPlatformUserCountsWithPeriod('{period}', )->get($requestConfiguration)->wait();

```