---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Shift;
use Microsoft\Graph\Generated\Models\ShiftItem;
use Microsoft\Graph\Generated\Models\ScheduleEntityTheme;
use Microsoft\Graph\Generated\Models\ShiftActivity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Shift();
$requestBody->setUserId('5ca83ce7-291d-43b7-bf53-af79eef4bc1d');
$draftShift = new ShiftItem();
$draftShift->setDisplayName(null);
$draftShift->setStartDateTime(new \DateTime('2024-10-08T15:00:00Z'));
$draftShift->setEndDateTime(new \DateTime('2024-10-09T00:00:00Z'));
$draftShift->setTheme(new ScheduleEntityTheme('blue'));
$draftShift->setNotes(null);
$draftShift->setActivities([	]);
$requestBody->setDraftShift($draftShift);
$requestBody->setSharedShift(null);
$requestBody->setIsStagedForDeletion(false);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->shifts()->post($requestBody)->wait();

```