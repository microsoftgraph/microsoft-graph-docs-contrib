---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Reports\GetM365AppUserCounts(period='{period}')\GetM365AppUserCountsWithPeriodRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetM365AppUserCountsWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetM365AppUserCountsWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getM365AppUserCountsWithPeriod('{period}', )->get($requestConfiguration)->wait();

```