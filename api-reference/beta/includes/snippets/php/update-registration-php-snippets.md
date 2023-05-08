---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MeetingRegistration();
$requestBody->setSubject('Microsoft Ignite: Day 1');

$requestBody->setStartDateTime(new DateTime('2021-11-02T08:00:00-08:00'));

$requestBody->setEndDateTime(new DateTime('2021-11-02T15:45:00-08:00'));

$speakersMeetingSpeaker1 = new MeetingSpeaker();
$speakersMeetingSpeaker1->setDisplayName('Henry Ross');

$speakersMeetingSpeaker1->setBio('Chairman and Chief Executive Officer');


$speakersArray []= $speakersMeetingSpeaker1;
$speakersMeetingSpeaker2 = new MeetingSpeaker();
$speakersMeetingSpeaker2->setDisplayName('Fred Ryan');

$speakersMeetingSpeaker2->setBio('CVP');


$speakersArray []= $speakersMeetingSpeaker2;
$requestBody->setSpeakers($speakersArray);




$result = $graphServiceClient->me()->onlineMeetingsById('onlineMeeting-id')->registration()->patch($requestBody);


```