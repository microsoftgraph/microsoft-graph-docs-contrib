---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Planner\Tasks\Item\ProgressTaskBoardFormat\ProgressTaskBoardFormatRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\PlannerProgressTaskBoardTaskFormat;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerProgressTaskBoardTaskFormat();
$requestBody->setOrderHint('A6673H Ejkl!');
$requestConfiguration = new ProgressTaskBoardFormatRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->progressTaskBoardFormat()->patch($requestBody, $requestConfiguration)->wait();

```