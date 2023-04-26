---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingAppointment();
$requestBody->set@odatatype('#microsoft.graph.bookingAppointment');

$endDateTime = new DateTimeTimeZone();
$endDateTime->set@odatatype('#microsoft.graph.dateTimeTimeZone');

$endDateTime->setDateTime('2018-05-06T12:30:00.0000000+00:00');

$endDateTime->setTimeZone('UTC');


$requestBody->setEndDateTime($endDateTime);
$startDateTime = new DateTimeTimeZone();
$startDateTime->set@odatatype('#microsoft.graph.dateTimeTimeZone');

$startDateTime->setDateTime('2018-05-06T12:00:00.0000000+00:00');

$startDateTime->setTimeZone('UTC');


$requestBody->setStartDateTime($startDateTime);


$result = $graphServiceClient->solutions()->bookingBusinessesById('bookingBusiness-id')->appointmentsById('bookingAppointment-id')->patch($requestBody);


```