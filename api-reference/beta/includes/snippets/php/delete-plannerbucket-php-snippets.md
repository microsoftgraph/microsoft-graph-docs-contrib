---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Buckets\Item\PlannerBucketItemRequestBuilderDeleteRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PlannerBucketItemRequestBuilderDeleteRequestConfiguration();
$headers = [
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->planner()->buckets()->byPlannerBucketId('plannerBucket-id')->delete($requestConfiguration)->wait();

```