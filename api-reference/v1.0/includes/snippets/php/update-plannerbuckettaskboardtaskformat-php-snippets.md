---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Planner\Tasks\Item\BucketTaskBoardFormat\BucketTaskBoardFormatRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\PlannerBucketTaskBoardTaskFormat;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerBucketTaskBoardTaskFormat();
$requestBody->setOrderHint('A6673H Ejkl!');
$requestConfiguration = new BucketTaskBoardFormatRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->bucketTaskBoardFormat()->patch($requestBody, $requestConfiguration)->wait();

```