---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetPlanPostRequestBody();
$target = new BusinessScenarioGroupTarget();
$target->setOdataType('microsoft.graph.businessScenarioGroupTarget');
$target->setTaskTargetKind(new PlannerTaskTargetKind('group'));
$target->setGroupId('7a339254-4b2b-4410-b295-c890a16776ee');
$requestBody->setTarget($target);

$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->getPlan()->post($requestBody)->wait();

```