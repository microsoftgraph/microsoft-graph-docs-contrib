---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Planner\Tasks\Item\PlannerTaskItemRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\PlannerTask;
use Microsoft\Graph\Generated\Models\PlannerAssignments;
use Microsoft\Graph\Generated\Models\PlannerAssignment;
use Microsoft\Graph\Generated\Models\PlannerAppliedCategories;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerTask();
$assignments = new PlannerAssignments();
$additionalData = [
	'fbab97d0-4932-4511-b675-204639209557' => [
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
$requestConfiguration = new PlannerTaskItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->patch($requestBody, $requestConfiguration)->wait();

```