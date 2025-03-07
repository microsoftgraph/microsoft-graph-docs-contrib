---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Plans\Item\Archive\ArchivePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ArchivePostRequestBody();
$requestBody->setJustification('String');

$graphServiceClient->planner()->plans()->byPlannerPlanId('plannerPlan-id')->archive()->post($requestBody)->wait();

```