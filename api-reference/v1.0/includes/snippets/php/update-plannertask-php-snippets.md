---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerTask();
$assignments = new PlannerAssignments();
$additionalData = [
		'fbab97d0-4932-4511-b675-204639209557' => 		[
				'@odata.type' => '#microsoft.graph.plannerAssignment', 
				'orderHint' => 'N9917 U2883!', 
		],

];
$assignments->setAdditionalData($additionalData);



$requestBody->setAssignments($assignments);
$appliedCategories = new PlannerAppliedCategories();
$additionalData = [
		'category3' => true,
		'category4' => false,
];
$appliedCategories->setAdditionalData($additionalData);



$requestBody->setAppliedCategories($appliedCategories);

$requestConfiguration = new PlannerTaskRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->patch($requestBody, $requestConfiguration);


```