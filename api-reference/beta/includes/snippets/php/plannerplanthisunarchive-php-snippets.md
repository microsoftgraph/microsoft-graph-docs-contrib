---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Plans\Item\Unarchive\UnarchivePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnarchivePostRequestBody();
$requestBody->setJustification('String');

$graphServiceClient->planner()->plans()->byPlannerPlanId('plannerPlan-id')->unarchive()->post($requestBody)->wait();

```