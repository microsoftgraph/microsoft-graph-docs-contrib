---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PlannerRoster;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerRoster();
$requestBody->setOdataType('#microsoft.graph.plannerRoster');

$result = $graphServiceClient->planner()->rosters()->post($requestBody)->wait();

```