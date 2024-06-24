---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Schedule;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Schedule();
$requestBody->setEnabled(true);
$requestBody->setTimeZone('America/Chicago');

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->put($requestBody)->wait();

```