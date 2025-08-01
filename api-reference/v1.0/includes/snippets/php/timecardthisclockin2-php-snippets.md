---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Schedule\TimeCards\ClockIn\ClockInPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClockInPostRequestBody();
$requestBody->setIsAtApprovedLocation(true);
$requestBody->setOnBehalfOfUserId('3f29c8e7-7a41-4d8e-99d6-2b1f76c9421e');

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->clockIn()->post($requestBody)->wait();

```