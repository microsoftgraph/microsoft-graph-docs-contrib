---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUserCountSummary(period='{period}',version='@version')\GetMicrosoft365CopilotUserCountSummaryWithPeriodversion='@version'RequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUserCountSummaryWithPeriodversion='@version'RequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUserCountSummaryWithPeriodversion='@version'RequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUserCountSummaryWithPeriod('{period}', )->get($requestConfiguration)->wait();

```