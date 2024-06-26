---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetTeamsTeamCounts(period='{period}')\GetTeamsTeamCountsWithPeriodRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetTeamsTeamCountsWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetTeamsTeamCountsWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getTeamsTeamCountsWithPeriod('{period}', )->get($requestConfiguration)->wait();

```