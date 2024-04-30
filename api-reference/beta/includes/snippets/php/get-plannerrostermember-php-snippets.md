---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->planner()->rosters()->byPlannerRosterId('plannerRoster-id')->members()->byPlannerRosterMemberId('plannerRosterMember-id')->get()->wait();

```