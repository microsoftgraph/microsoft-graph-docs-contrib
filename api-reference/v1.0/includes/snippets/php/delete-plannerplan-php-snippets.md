---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PlannerPlanItemRequestBuilderDeleteRequestConfiguration();
$headers = [
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->planner()->plans()->byPlannerPlanId('plannerPlan-id')->delete($requestConfiguration)->wait();

```