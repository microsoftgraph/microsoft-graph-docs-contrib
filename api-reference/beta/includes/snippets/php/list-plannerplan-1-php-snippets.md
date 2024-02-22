---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->planner()->rosters()->byPlannerRosterId('plannerRoster-id')->plans()->get()->wait();

```