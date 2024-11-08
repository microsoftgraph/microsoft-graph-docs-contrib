---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Schedule\OpenShifts\OpenShiftsRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Generated\Models\OpenShift;
use Microsoft\Graph\Generated\Models\OpenShiftItem;
use Microsoft\Graph\Generated\Models\ScheduleEntityTheme;
use Microsoft\Graph\Generated\Models\ShiftActivity;
use Microsoft\Graph\Generated\Models\IdentitySet;
use Microsoft\Graph\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenShift();
$requestBody->setSchedulingGroupId('TAG_228940ed-ff84-4e25-b129-1b395cf78be0');
$sharedOpenShift = new OpenShiftItem();
$sharedOpenShift->setNotes('InventoryManagement');
$sharedOpenShift->setOpenSlotCount(2);
$sharedOpenShift->setDisplayName('Dayshift');
$sharedOpenShift->setStartDateTime(new \DateTime('2018-10-04T00: 58: 45.340Z'));
$sharedOpenShift->setEndDateTime(new \DateTime('2018-10-04T09: 50: 45.332Z'));
$sharedOpenShift->setTheme(new ScheduleEntityTheme('white'));
$activitiesShiftActivity1 = new ShiftActivity();
$activitiesShiftActivity1->setIsPaid(true);
$activitiesShiftActivity1->setStartDateTime(new \DateTime('2018-10-04T00: 58: 45.340Z'));
$activitiesShiftActivity1->setEndDateTime(new \DateTime('2018-10-04T01: 58: 45.340Z'));
$activitiesShiftActivity1->setCode('');
$activitiesShiftActivity1->setDisplayName('Lunch');
$activitiesArray []= $activitiesShiftActivity1;
$sharedOpenShift->setActivities($activitiesArray);

$requestBody->setSharedOpenShift($sharedOpenShift);
$requestBody->setDraftOpenShift(null);
$requestBody->setIsStagedForDeletion(false);
$requestConfiguration = new OpenShiftsRequestBuilderPostRequestConfiguration();
$headers = [
	'Authorization' => 'Bearer {token}',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->openShifts()->post($requestBody, $requestConfiguration)->wait();

```