---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUserCountTrend(period='{period}',version='{version}')\GetMicrosoft365CopilotUserCountTrendWithPeriodWithVersionRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUserCountTrendWithPeriodWithVersionRequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUserCountTrendWithPeriodWithVersionRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUserCountTrendWithPeriodWithVersion('{period}', '{version}', )->get($requestConfiguration)->wait();

```