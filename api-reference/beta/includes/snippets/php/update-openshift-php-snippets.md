---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OpenShift();
$additionalData = [
		'schedulingGroupId' => 'TAG_228940ed-ff84-4e25-b129-1b395cf78be0', 
		'sharedOpenShift' => $requestBody = new SharedOpenShift();
$		requestBody->setNotes('Inventory Management');

		$requestBody->setOpenSlotCount(5);

$		requestBody->setDisplayName('Field shift');

$		requestBody->setStartDateTime('2018-10-04T00:58:45.340Z');

$		requestBody->setEndDateTime('2018-10-04T09:50:45.332Z');

$		requestBody->setTheme('white');

$activities1 = new ();
		$activities1->setIsPaid(true);

$		activities1->setStartDateTime('2018-10-04T00:58:45.340Z');

$		activities1->setEndDateTime('2018-10-04T01:58:45.340Z');

$		activities1->setCode('');

$		activities1->setDisplayName('Lunch');


$activitiesArray []= $activities1;
$requestBody->setActivities($activitiesArray);



$requestBody->setSharedOpenShift($sharedOpenShift);

	'draftOpenShift' => 	null,
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->teamsById('team-id')->schedule()->openShiftsById('openShift-id')->put($requestBody);


```