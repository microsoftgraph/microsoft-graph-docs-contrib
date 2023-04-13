---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TimeOff();
$requestBody->setUserId('c5d0c76b-80c4-481c-be50-923cd8d680a1');

$sharedTimeOff = new TimeOffItem();
$sharedTimeOff->setTimeOffReasonId('TOR_891045ca-b5d2-406b-aa06-a3c8921245d7');

$sharedTimeOff->setStartDateTime(new DateTime('2019-03-11T07:00:00Z'));

$sharedTimeOff->setEndDateTime(new DateTime('2019-03-12T07:00:00Z'));

$sharedTimeOff->setTheme(new ScheduleEntityTheme('white'));


$requestBody->setSharedTimeOff($sharedTimeOff);
$draftTimeOff = new TimeOffItem();
$draftTimeOff->setTimeOffReasonId('TOR_891045ca-b5d2-406b-aa06-a3c8921245d7');

$draftTimeOff->setStartDateTime(new DateTime('2019-03-11T07:00:00Z'));

$draftTimeOff->setEndDateTime(new DateTime('2019-03-12T07:00:00Z'));

$draftTimeOff->setTheme(new ScheduleEntityTheme('pink'));


$requestBody->setDraftTimeOff($draftTimeOff);


$result = $graphServiceClient->teamsById('team-id')->schedule()->timesOff()->post($requestBody);


```