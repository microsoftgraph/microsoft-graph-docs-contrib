---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Planner\Buckets\Item\PlannerBucketItemRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\PlannerBucket;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerBucket();
$requestBody->setName('Development');
$requestConfiguration = new PlannerBucketItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->buckets()->byPlannerBucketId('plannerBucket-id')->patch($requestBody, $requestConfiguration)->wait();

```