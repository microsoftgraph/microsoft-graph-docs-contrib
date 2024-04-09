---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PlannerRosterMember;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerRosterMember();
$requestBody->setOdataType('#microsoft.graph.plannerRosterMember');
$requestBody->setUserId('String');

$result = $graphServiceClient->planner()->rosters()->byPlannerRosterId('plannerRoster-id')->members()->post($requestBody)->wait();

```