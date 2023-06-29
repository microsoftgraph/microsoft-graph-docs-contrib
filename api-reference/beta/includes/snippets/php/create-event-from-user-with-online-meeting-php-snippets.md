---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Event();
$requestBody->setSubject('Let\'s go for lunch');

$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('Does noon work for you?');


$requestBody->setBody($body);
$start = new DateTimeTimeZone();
$start->setDateTime('2017-04-15T12:00:00');

$start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2017-04-15T14:00:00');

$end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);
$location = new Location();
$location->setDisplayName('Harry\'s Bar');


$requestBody->setLocation($location);
$attendeesAttendee1 = new Attendee();
$attendeesAttendee1EmailAddress = new EmailAddress();
$attendeesAttendee1EmailAddress->setAddress('samanthab@contoso.onmicrosoft.com');

$attendeesAttendee1EmailAddress->setName('Samantha Booth');


$attendeesAttendee1->setEmailAddress($attendeesAttendee1EmailAddress);
$attendeesAttendee1->setType(new AttendeeType('required'));


$attendeesArray []= $attendeesAttendee1;
$requestBody->setAttendees($attendeesArray);


$requestBody->setAllowNewTimeProposals(true);

$requestBody->setIsOnlineMeeting(true);

$requestBody->setOnlineMeetingProvider(new OnlineMeetingProviderType('teamsforbusiness'));


$requestConfiguration = new EventsRequestBuilderPostRequestConfiguration();
$headers = [
	'Prefer' => 'outlook.timezone="Pacific Standard Time"',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->events()->post($requestBody, $requestConfiguration);


```