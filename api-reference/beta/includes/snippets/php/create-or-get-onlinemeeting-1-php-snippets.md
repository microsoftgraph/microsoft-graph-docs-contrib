---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreateOrGetPostRequestBody();
$requestBody->setStartDateTime(new DateTime('2020-02-06T01:49:21.3524945+00:00'));

$requestBody->setEndDateTime(new DateTime('2020-02-06T02:19:21.3524945+00:00'));

$requestBody->setSubject('Create a meeting with customId provided');

$requestBody->setExternalId('7eb8263f-d0e0-4149-bb1c-1f0476083c56');

$participants = new MeetingParticipants();
$attendeesMeetingParticipantInfo1 = new MeetingParticipantInfo();
$attendeesMeetingParticipantInfo1Identity = new IdentitySet();
$attendeesMeetingParticipantInfo1IdentityUser = new Identity();
$attendeesMeetingParticipantInfo1IdentityUser->setId('1f35f2e6-9cab-44ad-8d5a-b74c14720000');


$attendeesMeetingParticipantInfo1Identity->setUser($attendeesMeetingParticipantInfo1IdentityUser);

$attendeesMeetingParticipantInfo1->setIdentity($attendeesMeetingParticipantInfo1Identity);
$attendeesMeetingParticipantInfo1->setRole(new OnlineMeetingRole('presenter'));

$attendeesMeetingParticipantInfo1->setUpn('test1@contoso.com');


$attendeesArray []= $attendeesMeetingParticipantInfo1;
$participants->setAttendees($attendeesArray);



$requestBody->setParticipants($participants);


$result = $graphServiceClient->me()->onlineMeetings()->createOrGet()->post($requestBody);


```