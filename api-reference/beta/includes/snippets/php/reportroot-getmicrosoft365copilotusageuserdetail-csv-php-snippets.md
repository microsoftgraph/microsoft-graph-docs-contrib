---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUsageUserDetail(period='{period}')\GetMicrosoft365CopilotUsageUserDetailWithPeriodRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUsageUserDetailWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUsageUserDetailWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUsageUserDetailWithPeriod('{period}', )->get($requestConfiguration)->wait();

```