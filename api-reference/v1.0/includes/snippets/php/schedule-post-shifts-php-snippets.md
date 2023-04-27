---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Shift();
$requestBody->setId('SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8');

$requestBody->setUserId('c5d0c76b-80c4-481c-be50-923cd8d680a1');

$requestBody->setSchedulingGroupId('TAG_228940ed-ff84-4e25-b129-1b395cf78be0');

$sharedShift = new ShiftItem();
$sharedShift->setDisplayName('Day shift');

$sharedShift->setNotes('Please do inventory as part of your shift.');

$sharedShift->setStartDateTime(new DateTime('2019-03-11T15:00:00Z'));

$sharedShift->setEndDateTime(new DateTime('2019-03-12T00:00:00Z'));

$sharedShift->setTheme(new ScheduleEntityTheme('blue'));

$activitiesShiftActivity1 = new ShiftActivity();
$activitiesShiftActivity1->setIsPaid(true);

$activitiesShiftActivity1->setStartDateTime(new DateTime('2019-03-11T15:00:00Z'));

$activitiesShiftActivity1->setEndDateTime(new DateTime('2019-03-11T15:15:00Z'));

$activitiesShiftActivity1->setCode('');

$activitiesShiftActivity1->setDisplayName('Lunch');


$activitiesArray []= $activitiesShiftActivity1;
$sharedShift->setActivities($activitiesArray);



$requestBody->setSharedShift($sharedShift);
$draftShift = new ShiftItem();
$draftShift->setDisplayName('Day shift');

$draftShift->setNotes('Please do inventory as part of your shift.');

$draftShift->setStartDateTime(new DateTime('2019-03-11T15:00:00Z'));

$draftShift->setEndDateTime(new DateTime('2019-03-12T00:00:00Z'));

$draftShift->setTheme(new ScheduleEntityTheme('blue'));

$activitiesShiftActivity1 = new ShiftActivity();
$activitiesShiftActivity1->setIsPaid(true);

$activitiesShiftActivity1->setStartDateTime(new DateTime('2019-03-11T15:00:00Z'));

$activitiesShiftActivity1->setEndDateTime(new DateTime('2019-03-11T15:30:00Z'));

$activitiesShiftActivity1->setCode('');

$activitiesShiftActivity1->setDisplayName('Lunch');


$activitiesArray []= $activitiesShiftActivity1;
$draftShift->setActivities($activitiesArray);



$requestBody->setDraftShift($draftShift);


$result = $graphServiceClient->teamsById('team-id')->schedule()->shifts()->post($requestBody);


```