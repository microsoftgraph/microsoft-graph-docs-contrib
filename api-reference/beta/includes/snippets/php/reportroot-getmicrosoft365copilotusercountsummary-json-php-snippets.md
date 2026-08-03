---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUserCountSummary(period='{period}',version='{version}')\GetMicrosoft365CopilotUserCountSummaryWithPeriodWithVersionRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUserCountSummaryWithPeriodWithVersionRequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUserCountSummaryWithPeriodWithVersionRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUserCountSummaryWithPeriodWithVersion('{period}', '{version}', )->get($requestConfiguration)->wait();

```