---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Event();
$requestBody->setSubject('Celebrate Thanksgiving');

$body = new ItemBody();
$body->setContentType(new BodyType('hTML'));

$body->setContent('Let\'s get together!');


$requestBody->setBody($body);
$start = new DateTimeTimeZone();
$start->setDateTime('2015-11-26T18:00:00');

$start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2015-11-26T23:00:00');

$end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);
$attendeesAttendee1 = new Attendee();
$attendeesAttendee1EmailAddress = new EmailAddress();
$attendeesAttendee1EmailAddress->setAddress('Terrie@contoso.com');

$attendeesAttendee1EmailAddress->setName('Terrie Barrera');


$attendeesAttendee1->setEmailAddress($attendeesAttendee1EmailAddress);
$attendeesAttendee1->setType(new AttendeeType('required'));


$attendeesArray []= $attendeesAttendee1;
$requestBody->setAttendees($attendeesArray);


$singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1 = new SingleValueLegacyExtendedProperty();
$singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1->setId('String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun');

$singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1->setValue('Food');


$singleValueExtendedPropertiesArray []= $singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1;
$requestBody->setSingleValueExtendedProperties($singleValueExtendedPropertiesArray);




$result = $graphServiceClient->me()->events()->post($requestBody);


```