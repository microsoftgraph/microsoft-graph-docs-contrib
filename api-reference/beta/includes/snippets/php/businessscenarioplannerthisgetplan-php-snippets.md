---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BusinessScenarios\Item\Planner\GetPlan\GetPlanPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\BusinessScenarioGroupTarget;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskTargetKind;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetPlanPostRequestBody();
$target = new BusinessScenarioGroupTarget();
$target->setOdataType('microsoft.graph.businessScenarioGroupTarget');
$target->setTaskTargetKind(new PlannerTaskTargetKind('group'));
$target->setGroupId('7a339254-4b2b-4410-b295-c890a16776ee');
$requestBody->setTarget($target);

$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->getPlan()->post($requestBody)->wait();

```