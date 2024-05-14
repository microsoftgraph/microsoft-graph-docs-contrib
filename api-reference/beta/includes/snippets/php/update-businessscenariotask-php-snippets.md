---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BusinessScenarioTask;
use Microsoft\Graph\Generated\Models\BusinessScenarioProperties;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BusinessScenarioTask();
$requestBody->setOdataType('#microsoft.graph.businessScenarioTask');
$requestBody->setTitle('Customer order #12010');
$requestBody->setPercentComplete(20);
$requestBody->setPriority(1);
$businessScenarioProperties = new BusinessScenarioProperties();
$businessScenarioProperties->setExternalObjectVersion('000003');
$requestBody->setBusinessScenarioProperties($businessScenarioProperties);

$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->tasks()->byBusinessScenarioTaskId('businessScenarioTask-id')->patch($requestBody)->wait();

```