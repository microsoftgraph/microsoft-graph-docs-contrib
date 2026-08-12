---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUsageUserDetail(period='{period}',version='@version')\GetMicrosoft365CopilotUsageUserDetailWithPeriodversion='@version'RequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUsageUserDetailWithPeriodversion='@version'RequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUsageUserDetailWithPeriodversion='@version'RequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUsageUserDetailWithPeriod('{period}', )->get($requestConfiguration)->wait();

```