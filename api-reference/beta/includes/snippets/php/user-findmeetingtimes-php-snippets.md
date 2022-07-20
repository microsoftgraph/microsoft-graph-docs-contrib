---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new FindMeetingTimesPostRequestBody();
$attendees1 = new ();
$additionalData = [
'type' => 'required', 
'emailAddress' => $attendees1 = new ();
$		attendees1->setName('Alex Wilbur');

$		attendees1->setAddress('alexw@contoso.onmicrosoft.com');


$attendees1->setEmailAddress($emailAddress);

];
$attendees1->setAdditionalData($additionalData);



$attendeesArray []= $attendees1;
$requestBody->setAttendees($attendeesArray);


$locationConstraint = new LocationConstraint();
$locationConstraint->setIsRequired('false');

$locationConstraint->setSuggestLocation('false');

$locations1 = new ();
$additionalData = [
'resolveAvailability' => 'false', 
'displayName' => 'Conf room Hood', 
];
$locations1->setAdditionalData($additionalData);



$locationsArray []= $locations1;
$locationConstraint->setLocations($locationsArray);



$requestBody->setLocationConstraint($locationConstraint);
$timeConstraint = new TimeConstraint();
$timeConstraint->setActivityDomain(new ActivityDomain('work'));

$timeSlotsTimeSlot1 = new TimeSlot();
$timeSlotsTimeSlot1Start = new DateTimeTimeZone();
$timeSlotsTimeSlot1Start->setDateTime('2019-04-16T09:00:00');

$timeSlotsTimeSlot1Start->setTimeZone('Pacific Standard Time');


$timeSlotsTimeSlot1->setStart($timeSlotsTimeSlot1Start);
$timeSlotsTimeSlot1End = new DateTimeTimeZone();
$timeSlotsTimeSlot1End->setDateTime('2019-04-18T17:00:00');

$timeSlotsTimeSlot1End->setTimeZone('Pacific Standard Time');


$timeSlotsTimeSlot1->setEnd($timeSlotsTimeSlot1End);

$timeSlotsArray []= $timeSlotsTimeSlot1;
$timeConstraint->setTimeSlots($timeSlotsArray);



$requestBody->setTimeConstraint($timeConstraint);
$requestBody->setIsOrganizerOptional('false');

$requestBody->setMeetingDuration('PT1H');

$requestBody->setReturnSuggestionReasons('true');

$requestBody->setMinimumAttendeePercentage(new ('100'));


$requestConfiguration = new FindMeetingTimesRequestBuilderPostRequestConfiguration();

$headers = [
'Prefer' => 'outlook.timezone="Pacific Standard Time"',
];

$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->me()->findMeetingTimes()->post($requestBody, $requestConfiguration);


```