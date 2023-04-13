---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GetPlanPostRequestBody();
$target = new BusinessScenarioTaskTargetBase();
$target->set@odatatype('microsoft.graph.businessScenarioGroupTarget');

$target->setTaskTargetKind(new PlannerTaskTargetKind('group'));

$additionalData = [
		'groupId' => '7a339254-4b2b-4410-b295-c890a16776ee', 
];
$target->setAdditionalData($additionalData);



$requestBody->setTarget($target);


$result = $graphServiceClient->solutions()->businessScenariosById('businessScenario-id')->planner()->getPlan()->post($requestBody);


```