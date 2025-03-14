---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUserCountSummary(period='{period}')\GetMicrosoft365CopilotUserCountSummaryWithPeriodRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUserCountSummaryWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUserCountSummaryWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUserCountSummaryWithPeriod('{period}', )->get($requestConfiguration)->wait();

```