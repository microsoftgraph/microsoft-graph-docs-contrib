---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->bucketTaskBoardFormat()->get()->wait();

```