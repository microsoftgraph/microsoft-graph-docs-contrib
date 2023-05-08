---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerTask();
$assignments = new PlannerAssignments();
$additionalData = [
		'fbab97d0-4932-4511-b675-204639209557' => $assignments = new Fbab97d0-4932-4511-b675-204639209557();
$		assignments->set@odatatype('#microsoft.graph.plannerAssignment');

$		assignments->setOrderHint('N9917 U2883!');


$assignments->setFbab97d0-4932-4511-b675-204639209557($fbab97d0-4932-4511-b675-204639209557);

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


$result = $graphServiceClient->planner()->tasksById('plannerTask-id')->patch($requestBody, $requestConfiguration);


```