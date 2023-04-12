---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OpenShift();
$requestBody->setSchedulingGroupId('TAG_228940ed-ff84-4e25-b129-1b395cf78be0');

$sharedOpenShift = new OpenShiftItem();
$sharedOpenShift->setNotes('Inventory Management');

$sharedOpenShift->setOpenSlotCount(5);

$sharedOpenShift->setDisplayName('Field shift');

$sharedOpenShift->setStartDateTime(new DateTime('2018-10-04T00:58:45.340Z'));

$sharedOpenShift->setEndDateTime(new DateTime('2018-10-04T09:50:45.332Z'));

$sharedOpenShift->setTheme(new ScheduleEntityTheme('white'));

$activitiesShiftActivity1 = new ShiftActivity();
$activitiesShiftActivity1->setIsPaid(true);

$activitiesShiftActivity1->setStartDateTime(new DateTime('2018-10-04T00:58:45.340Z'));

$activitiesShiftActivity1->setEndDateTime(new DateTime('2018-10-04T01:58:45.340Z'));

$activitiesShiftActivity1->setCode('');

$activitiesShiftActivity1->setDisplayName('Lunch');


$activitiesArray []= $activitiesShiftActivity1;
$sharedOpenShift->setActivities($activitiesArray);



$requestBody->setSharedOpenShift($sharedOpenShift);
$requestBody->setDraftOpenShift(null);



$result = $graphServiceClient->teamsById('team-id')->schedule()->openShiftsById('openShift-id')->patch($requestBody);


```