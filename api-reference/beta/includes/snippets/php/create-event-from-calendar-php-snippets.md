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

$body->setContent('Does next month work for you?');


$requestBody->setBody($body);
$start = new DateTimeTimeZone();
$start->setDateTime('2019-03-10T12:00:00');

$start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2019-03-10T14:00:00');

$end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);
$location = new Location();
$location->setDisplayName('Harry\'s Bar');


$requestBody->setLocation($location);
$attendeesAttendee1 = new Attendee();
$attendeesAttendee1EmailAddress = new EmailAddress();
$attendeesAttendee1EmailAddress->setAddress('adelev@contoso.onmicrosoft.com');

$attendeesAttendee1EmailAddress->setName('Adele Vance');


$attendeesAttendee1->setEmailAddress($attendeesAttendee1EmailAddress);
$attendeesAttendee1->setType(new AttendeeType('required'));


$attendeesArray []= $attendeesAttendee1;
$requestBody->setAttendees($attendeesArray);


$requestBody->setTransactionId('7E163156-7762-4BEB-A1C6-729EA81755A7');



$result = $graphServiceClient->me()->calendarsById('calendar-id')->events()->post($requestBody);


```