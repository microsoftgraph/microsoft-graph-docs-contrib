---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new FindMeetingTimesPostRequestBody();
$attendeesAttendeeBase1 = new AttendeeBase();
$attendeesAttendeeBase1->setType(new AttendeeType('required'));

$attendeesAttendeeBase1EmailAddress = new EmailAddress();
$attendeesAttendeeBase1EmailAddress->setName('Alex Wilbur');

$attendeesAttendeeBase1EmailAddress->setAddress('alexw@contoso.onmicrosoft.com');


$attendeesAttendeeBase1->setEmailAddress($attendeesAttendeeBase1EmailAddress);

$attendeesArray []= $attendeesAttendeeBase1;
$requestBody->setAttendees($attendeesArray);


$locationConstraint = new LocationConstraint();
$locationConstraint->setIsRequired(false);

$locationConstraint->setSuggestLocation(false);

$locationsLocationConstraintItem1 = new LocationConstraintItem();
$locationsLocationConstraintItem1->setResolveAvailability(false);

$locationsLocationConstraintItem1->setDisplayName('Conf room Hood');


$locationsArray []= $locationsLocationConstraintItem1;
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
$requestBody->setIsOrganizerOptional(false);

$requestBody->setMeetingDuration(new \DateInterval('PT1H'));

$requestBody->setReturnSuggestionReasons(true);

$requestBody->setMinimumAttendeePercentage('100');


$requestConfiguration = new FindMeetingTimesRequestBuilderPostRequestConfiguration();
$headers = [
'Prefer' => 'outlook.timezone="Pacific Standard Time"',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->findMeetingTimes()->post($requestBody, $requestConfiguration);


```