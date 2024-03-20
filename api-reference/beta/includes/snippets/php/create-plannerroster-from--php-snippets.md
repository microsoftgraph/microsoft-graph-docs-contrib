---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerRoster();
$requestBody->setOdataType('#microsoft.graph.plannerRoster');

$result = $graphServiceClient->planner()->rosters()->post($requestBody)->wait();

```