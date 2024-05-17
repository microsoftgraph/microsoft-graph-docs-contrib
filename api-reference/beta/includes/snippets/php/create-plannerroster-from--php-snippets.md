---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PlannerRoster;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerRoster();
$requestBody->setOdataType('#microsoft.graph.plannerRoster');

$result = $graphServiceClient->planner()->rosters()->post($requestBody)->wait();

```