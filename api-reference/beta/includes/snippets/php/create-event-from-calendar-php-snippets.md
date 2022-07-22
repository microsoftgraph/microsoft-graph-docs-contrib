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
$attendees1 = new ();
$additionalData = [
'emailAddress' => $attendees1 = new ();
$		attendees1->setAddress('adelev@contoso.onmicrosoft.com');

$		attendees1->setName('Adele Vance');


$attendees1->setEmailAddress($emailAddress);

'type' => 'required', 
];
$attendees1->setAdditionalData($additionalData);



$attendeesArray []= $attendees1;
$requestBody->setAttendees($attendeesArray);


$requestBody->setTransactionId('7E163156-7762-4BEB-A1C6-729EA81755A7');



$requestResult = $graphServiceClient->me()->calendarsById('calendar-id')->events()->post($requestBody);


```