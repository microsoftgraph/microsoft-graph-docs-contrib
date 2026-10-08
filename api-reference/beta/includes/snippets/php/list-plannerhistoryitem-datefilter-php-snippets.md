---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Plans\Item\HistoryItems\HistoryItemsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new HistoryItemsRequestBuilderGetRequestConfiguration();
$queryParameters = HistoryItemsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "occurredDateTime gt 2025-11-01T00:00:00Z and occurredDateTime lt 2025-12-01T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->planner()->plans()->byPlannerPlanId('plannerPlan-id')->historyItems()->get($requestConfiguration)->wait();

```