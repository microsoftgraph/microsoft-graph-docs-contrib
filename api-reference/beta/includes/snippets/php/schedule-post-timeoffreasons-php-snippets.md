---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TimeOffReason;
use Microsoft\Graph\Beta\Generated\Models\TimeOffReasonIconType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TimeOffReason();
$requestBody->setDisplayName('Vacation');
$requestBody->setCode('VacationCode');
$requestBody->setIconType(new TimeOffReasonIconType('plane'));
$requestBody->setIsActive(true);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeOffReasons()->post($requestBody)->wait();

```