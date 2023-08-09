---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BusinessScenarioTask();
$requestBody->setOdataType('#microsoft.graph.businessScenarioTask');

$requestBody->setTitle('Customer order #12010');

$requestBody->setPercentComplete(20);

$requestBody->setPriority(1);

$businessScenarioProperties = new BusinessScenarioProperties();
$businessScenarioProperties->setExternalObjectVersion('000003');


$requestBody->setBusinessScenarioProperties($businessScenarioProperties);


$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->tasks()->byBusinessScenarioTaskId('businessScenarioTask-id')->patch($requestBody);


```