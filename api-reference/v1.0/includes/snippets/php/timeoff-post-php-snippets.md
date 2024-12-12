---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TimeOff;
use Microsoft\Graph\Generated\Models\TimeOffItem;
use Microsoft\Graph\Generated\Models\ScheduleEntityTheme;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TimeOff();
$requestBody->setUserId('aa162a04-bec6-4b81-ba99-96caa7b2b24d');
$sharedTimeOff = new TimeOffItem();
$sharedTimeOff->setTimeOffReasonId('TOR_29a5ba96-c7ef-4e76-bec6-055323746314');
$sharedTimeOff->setStartDateTime(new \DateTime('2024-10-10T19:00:00Z'));
$sharedTimeOff->setEndDateTime(new \DateTime('2024-10-10T20:00:00Z'));
$sharedTimeOff->setTheme(new ScheduleEntityTheme('blue'));
$requestBody->setSharedTimeOff($sharedTimeOff);
$requestBody->setDraftTimeOff(null);
$additionalData = [
	'isStagedForDeletion' => false,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timesOff()->post($requestBody)->wait();

```