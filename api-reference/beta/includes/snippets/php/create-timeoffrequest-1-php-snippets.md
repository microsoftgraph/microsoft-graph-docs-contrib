---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TimeOffRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TimeOffRequest();
$requestBody->setSenderMessage('Need a break');
$requestBody->setTimeOffReasonId('TOR_08c42f26-9b83-492c-bf52-f3609eb083e3');
$requestBody->setSenderUserId('3f2504e0-4f89-11d3-9a0c-0305e82c3301');
$requestBody->setStartDateTime(new \DateTime('2025-05-26T07:00:00Z'));
$requestBody->setEndDateTime(new \DateTime('2025-05-27T07:00:00Z'));

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeOffRequests()->post($requestBody)->wait();

```