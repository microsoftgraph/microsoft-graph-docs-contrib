---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BusinessScenarios\Item\Planner\Tasks\TasksRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TasksRequestBuilderGetRequestConfiguration();
$queryParameters = TasksRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "target/microsoft.graph.businessScenarioGroupTarget/groupId eq '7a339254-4b2b-4410-b295-c890a16776ee'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->tasks()->get($requestConfiguration)->wait();

```