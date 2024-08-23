---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PlannerBucket;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerBucket();
$requestBody->setName('Advertising');
$requestBody->setPlanId('xqQg5FS2LkCp935s-FIFm2QAFkHM');
$requestBody->setOrderHint(' !');

$result = $graphServiceClient->planner()->buckets()->post($requestBody)->wait();

```