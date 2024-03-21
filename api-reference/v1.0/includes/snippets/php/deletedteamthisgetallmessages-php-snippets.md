---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->teamwork()->deletedTeams()->byDeletedTeamId('deletedTeam-id')->channels()->getAllMessages()->get()->wait();

```