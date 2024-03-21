---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->planner()->rosters()->byPlannerRosterId('plannerRoster-id')->members()->byPlannerRosterMemberId('plannerRosterMember-id')->delete()->wait();

```