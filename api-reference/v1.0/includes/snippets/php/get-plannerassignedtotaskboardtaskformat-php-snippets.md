---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->assignedToTaskBoardFormat()->get()->wait();

```