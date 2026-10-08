---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUserCountTrend(period='{period}',version='@version')\GetMicrosoft365CopilotUserCountTrendWithPeriodversion='@version'RequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUserCountTrendWithPeriodversion='@version'RequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUserCountTrendWithPeriodversion='@version'RequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUserCountTrendWithPeriod('{period}', )->get($requestConfiguration)->wait();

```