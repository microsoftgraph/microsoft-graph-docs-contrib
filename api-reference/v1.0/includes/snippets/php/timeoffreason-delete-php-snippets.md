---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeOffReasons()->byTimeOffReasonId('timeOffReason-id')->delete()->wait();

```