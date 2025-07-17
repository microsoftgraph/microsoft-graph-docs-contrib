---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TimeOffReason;
use Microsoft\Graph\Generated\Models\TimeOffReasonIconType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TimeOffReason();
$requestBody->setDisplayName('Vacation');
$requestBody->setIconType(new TimeOffReasonIconType('plane'));
$requestBody->setIsActive(true);
$requestBody->setCode('VacationCode');

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeOffReasons()->post($requestBody)->wait();

```