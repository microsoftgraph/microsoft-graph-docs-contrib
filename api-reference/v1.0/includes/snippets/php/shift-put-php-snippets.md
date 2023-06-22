---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Shift();
$additionalData = [
		'id' => 'SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8', 
		'createdDateTime' => '2019-03-14T04:32:51.451Z', 
		'lastModifiedDateTime' => '2019-03-14T05:32:51.451Z', 
		'userId' => 'c5d0c76b-80c4-481c-be50-923cd8d680a1', 
		'schedulingGroupId' => 'TAG_228940ed-ff84-4e25-b129-1b395cf78be0', 
		'lastModifiedBy' => $requestBody = new LastModifiedBy();
		$requestBody->setApplication(null);

		$requestBody->setDevice(null);

		$requestBody->setConversation(null);

$user = new User();
$		user->setId('366c0b19-49b1-41b5-a03f-9f3887bd0ed8');

$		user->setDisplayName('John Doe');


$requestBody->setUser($user);

$requestBody->setLastModifiedBy($lastModifiedBy);

		'sharedShift' => $requestBody = new SharedShift();
$		requestBody->setDisplayName('Day shift');

$		requestBody->setNotes('Please do inventory as part of your shift.');

$		requestBody->setStartDateTime('2019-03-11T15:00:00Z');

$		requestBody->setEndDateTime('2019-03-12T00:00:00Z');

$		requestBody->setTheme('blue');

$activities1 = new ();
		$activities1->setIsPaid(true);

$		activities1->setStartDateTime('2019-03-11T15:00:00Z');

$		activities1->setEndDateTime('2019-03-11T15:15:00Z');

$		activities1->setCode('');

$		activities1->setDisplayName('Lunch');


$activitiesArray []= $activities1;
$requestBody->setActivities($activitiesArray);



$requestBody->setSharedShift($sharedShift);

	'draftShift' => $requestBody = new DraftShift();
$	requestBody->setDisplayName('Day shift');

$	requestBody->setNotes('Please do inventory as part of your shift.');

$	requestBody->setStartDateTime('2019-03-11T15:00:00Z');

$	requestBody->setEndDateTime('2019-03-12T00:00:00Z');

$	requestBody->setTheme('blue');

$activities1 = new ();
	$activities1->setIsPaid(true);

$	activities1->setStartDateTime('2019-03-11T15:00:00Z');

$	activities1->setEndDateTime('2019-03-11T15:30:00Z');

$	activities1->setCode('');

$	activities1->setDisplayName('Lunch');


$activitiesArray []= $activities1;
$requestBody->setActivities($activitiesArray);



$requestBody->setDraftShift($draftShift);

];
$requestBody->setAdditionalData($additionalData);



$requestConfiguration = new ShiftRequestBuilderPutRequestConfiguration();
$headers = [
'Prefer' => 'return=representation',
];
$requestConfiguration->headers = $headers;


$graphServiceClient->teamsById('team-id')->schedule()->shiftsById('shift-id')->put($requestBody, $requestConfiguration);


```