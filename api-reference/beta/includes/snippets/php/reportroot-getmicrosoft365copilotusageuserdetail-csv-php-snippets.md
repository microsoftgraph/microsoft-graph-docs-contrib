---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\GetMicrosoft365CopilotUsageUserDetail(period='{period}',version='{version}')\GetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilderGetRequestConfiguration();
$queryParameters = GetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/csv";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getMicrosoft365CopilotUsageUserDetailWithPeriodWithVersion('{period}', '{version}', )->get($requestConfiguration)->wait();

```