---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Tasks\Item\Messages\Item\SetReaction\SetReactionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetReactionPostRequestBody();
$requestBody->setReactionType('like');

$graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->messages()->byPlannerTaskChatMessageId('plannerTaskChatMessage-id')->setReaction()->post($requestBody)->wait();

```