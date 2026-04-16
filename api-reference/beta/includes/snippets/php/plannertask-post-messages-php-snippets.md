---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskChatMessage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerTaskChatMessage();
$requestBody->setContent('This is a new chat message');

$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->messages()->post($requestBody)->wait();

```