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


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenShift();
$requestBody->setSchedulingGroupId('TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a');
$sharedOpenShift = new OpenShiftItem();
$sharedOpenShift->setDisplayName('Dayshift');
$sharedOpenShift->setStartDateTime(new \DateTime('2024-11-04T20:00:00Z'));
$sharedOpenShift->setEndDateTime(new \DateTime('2024-11-04T21:00:00Z'));
$sharedOpenShift->setTheme(new ScheduleEntityTheme('blue'));
$sharedOpenShift->setNotes('InventoryManagement');
$sharedOpenShift->setOpenSlotCount(1);
$sharedOpenShift->setActivities([	]);
$requestBody->setSharedOpenShift($sharedOpenShift);
$additionalData = [
	'draftTimeOff' => null,
	'isStagedForDeletion' => false,
];
$requestBody->setAdditionalData($additionalData);
$requestConfiguration = new OpenShiftsRequestBuilderPostRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {token}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->openShifts()->post($requestBody, $requestConfiguration)->wait();

```