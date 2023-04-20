---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TimeCard();
$additionalData = [
		'userId' => '70e47528-2fae-42b5-9d8e-ee73ccd90603', 
		'state' => 'clockedOut', 
		'confirmedBy' => 'None', 
		'notes' => 		null,
		'clockInEvent' => $requestBody = new ClockInEvent();
$		requestBody->setDateTime('2021-05-21T21:58:41.327Z');

		$requestBody->setAtApprovedLocation(null);

$notes = new Notes();
$		notes->setContentType('text');

$		notes->setContent('update sample notes');


$requestBody->setNotes($notes);

$requestBody->setClockInEvent($clockInEvent);

		'clockOutEvent' => $requestBody = new ClockOutEvent();
$		requestBody->setDateTime('2021-05-21T22:01:46.205Z');

		$requestBody->setAtApprovedLocation(null);

$notes = new Notes();
$		notes->setContentType('text');

$		notes->setContent('update sample notes');


$requestBody->setNotes($notes);

$requestBody->setClockOutEvent($clockOutEvent);

		'breaks' => $breaks1 = new ();
$		breaks1->setBreakId('BRK_138f4751-68b1-44c1-aca2-2b26cba9e73f');

		$breaks1->setNotes(null);

$breaks1Start = new Start();
$		breaks1Start->setDateTime('2021-05-21T21:59:59.328Z');

		$breaks1Start->setAtApprovedLocation(null);

$breaks1StartNotes = new Notes();
$		breaks1StartNotes->setContentType('text');

$		breaks1StartNotes->setContent('update sample notes');


$breaks1Start->setNotes($breaks1StartNotes);

$breaks1->setStart($breaks1Start);
$breaks1End = new End();
$		breaks1End->setDateTime('2021-05-21T22:01:10.205Z');

		$breaks1End->setAtApprovedLocation(null);

$breaks1EndNotes = new Notes();
$		breaks1EndNotes->setContentType('text');

$		breaks1EndNotes->setContent('update sample notes');


$breaks1End->setNotes($breaks1EndNotes);

$breaks1->setEnd($breaks1End);

$breaksArray []= $breaks1;
$requestBody->setBreaks($breaksArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->teamsById('team-id')->schedule()->timeCardsById('timeCard-id')->put($requestBody);


```