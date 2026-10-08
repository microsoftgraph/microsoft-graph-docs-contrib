---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\NetworkAccess\Logs\GenerativeAIInsights\GenerativeAIInsightsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GenerativeAIInsightsRequestBuilderGetRequestConfiguration();
$queryParameters = GenerativeAIInsightsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "activity eq 'prompt'";
$queryParameters->orderby = ["createdDateTime desc"];
$queryParameters->top = 25;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->networkAccess()->logs()->generativeAIInsights()->get($requestConfiguration)->wait();

```