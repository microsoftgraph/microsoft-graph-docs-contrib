---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OpenShift();
$requestBody->setId('OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8');

$requestBody->setSchedulingGroupId('TAG_228940ed-ff84-4e25-b129-1b395cf78be0');

$sharedOpenShift = new OpenShiftItem();
$sharedOpenShift->setNotes('InventoryManagement');

$sharedOpenShift->setOpenSlotCount(2);

$sharedOpenShift->setDisplayName('Dayshift');

$sharedOpenShift->setStartDateTime(new DateTime('2018-10-04T00: 58: 45.340Z'));

$sharedOpenShift->setEndDateTime(new DateTime('2018-10-04T09: 50: 45.332Z'));

$sharedOpenShift->setTheme(new ScheduleEntityTheme('white'));

$activitiesShiftActivity1 = new ShiftActivity();
$activitiesShiftActivity1->setIsPaid(true);

$activitiesShiftActivity1->setStartDateTime(new DateTime('2018-10-04T00: 58: 45.340Z'));

$activitiesShiftActivity1->setEndDateTime(new DateTime('2018-10-04T01: 58: 45.340Z'));

$activitiesShiftActivity1->setCode('');

$activitiesShiftActivity1->setDisplayName('Lunch');


$activitiesArray []= $activitiesShiftActivity1;
$sharedOpenShift->setActivities($activitiesArray);



$requestBody->setSharedOpenShift($sharedOpenShift);
$requestBody->setDraftOpenShift(null);

$requestBody->setCreatedDateTime(new DateTime('2019-03-14T04: 32: 51.451Z'));

$requestBody->setLastModifiedDateTime(new DateTime('2019-03-14T05: 32: 51.451Z'));

$lastModifiedBy = new IdentitySet();
$LastModifiedBy->setApplication(null);

$LastModifiedBy->setDevice(null);

$lastModifiedByUser = new Identity();
$lastModifiedByUser->setId('366c0b19-49b1-41b5-a03f-9f3887bd0ed8');

$lastModifiedByUser->setDisplayName('JohnDoe');


$lastModifiedBy->setUser($lastModifiedByUser);
$additionalData = [
	'conversation' => 	null,
];
$lastModifiedBy->setAdditionalData($additionalData);



$requestBody->setLastModifiedBy($lastModifiedBy);

$requestConfiguration = new OpenShiftsRequestBuilderPostRequestConfiguration();
$headers = [
	'Authorization' => 'Bearer {token}',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->teamsById('team-id')->schedule()->openShifts()->post($requestBody, $requestConfiguration);


```