---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\OnlineMeetings\Item\AiInsights\AiInsightsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AiInsightsRequestBuilderGetRequestConfiguration();
$queryParameters = AiInsightsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "contentcorrelationId eq 'bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->aiInsights()->get($requestConfiguration)->wait();

```