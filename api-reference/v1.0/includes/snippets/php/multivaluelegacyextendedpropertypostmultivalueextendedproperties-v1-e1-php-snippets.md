---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Event();
$requestBody->setSubject('Family reunion');

$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('Let\'s get together this Thanksgiving!');


$requestBody->setBody($body);
$start = new DateTimeTimeZone();
$start->setDateTime('2015-11-26T09:00:00');

$start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2015-11-29T21:00:00');

$end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);
$attendeesAttendee1 = new Attendee();
$attendeesAttendee1EmailAddress = new EmailAddress();
$attendeesAttendee1EmailAddress->setAddress('Terrie@contoso.com');

$attendeesAttendee1EmailAddress->setName('Terrie Barrera');


$attendeesAttendee1->setEmailAddress($attendeesAttendee1EmailAddress);
$attendeesAttendee1->setType(new AttendeeType('required'));


$attendeesArray []= $attendeesAttendee1;
$attendeesAttendee2 = new Attendee();
$attendeesAttendee2EmailAddress = new EmailAddress();
$attendeesAttendee2EmailAddress->setAddress('Lauren@contoso.com');

$attendeesAttendee2EmailAddress->setName('Lauren Solis');


$attendeesAttendee2->setEmailAddress($attendeesAttendee2EmailAddress);
$attendeesAttendee2->setType(new AttendeeType('required'));


$attendeesArray []= $attendeesAttendee2;
$requestBody->setAttendees($attendeesArray);


$multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1 = new MultiValueLegacyExtendedProperty();
$multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1->setId('StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation');

$multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1->setValue(['Food', 'Hiking', 'Swimming', ]);


$multiValueExtendedPropertiesArray []= $multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1;
$requestBody->setMultiValueExtendedProperties($multiValueExtendedPropertiesArray);




$result = $graphServiceClient->me()->events()->post($requestBody);


```