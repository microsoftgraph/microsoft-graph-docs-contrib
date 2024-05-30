---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Plans\Item\PlannerPlanItemRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\PlannerPlan;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerPlan();
$requestBody->setTitle('title-value');
$requestConfiguration = new PlannerPlanItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->plans()->byPlannerPlanId('plannerPlan-id')->patch($requestBody, $requestConfiguration)->wait();

```