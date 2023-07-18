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

$requestBody->setPercentComplete(0);

$requestBody->setPriority(5);

$target = new BusinessScenarioGroupTarget();
$target->setOdataType('microsoft.graph.businessScenarioGroupTarget');

$target->setTaskTargetKind(new PlannerTaskTargetKind('group'));

$target->setGroupId('7a339254-4b2b-4410-b295-c890a16776ee');


$requestBody->setTarget($target);
$businessScenarioProperties = new BusinessScenarioProperties();
$businessScenarioProperties->setExternalObjectId('Order#12010');

$businessScenarioProperties->setExternalContextId('Warehouse-CA-36');

$businessScenarioProperties->setExternalObjectVersion('000001');

$businessScenarioProperties->setWebUrl('https://ordertracking.contoso.com/view?id=12010');

$businessScenarioProperties->setExternalBucketId('deliveryBucket');


$requestBody->setBusinessScenarioProperties($businessScenarioProperties);


$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->tasks()->post($requestBody);


```