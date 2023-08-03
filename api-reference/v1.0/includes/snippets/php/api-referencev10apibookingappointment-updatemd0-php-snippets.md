---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingAppointment();
$requestBody->setOdataType('#microsoft.graph.bookingAppointment');

$endDateTime = new DateTimeTimeZone();
$endDateTime->setOdataType('#microsoft.graph.dateTimeTimeZone');

$endDateTime->setDateTime('2018-05-06T12:30:00.0000000+00:00');

$endDateTime->setTimeZone('UTC');


$requestBody->setEndDateTime($endDateTime);
$startDateTime = new DateTimeTimeZone();
$startDateTime->setOdataType('#microsoft.graph.dateTimeTimeZone');

$startDateTime->setDateTime('2018-05-06T12:00:00.0000000+00:00');

$startDateTime->setTimeZone('UTC');


$requestBody->setStartDateTime($startDateTime);


$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->appointments()->byBookingAppointmentId('bookingAppointment-id')->patch($requestBody);


```