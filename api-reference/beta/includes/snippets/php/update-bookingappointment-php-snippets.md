---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingAppointment();
$requestBody->set@odatatype('#microsoft.graph.bookingAppointment');

$end = new DateTimeTimeZone();
$end->set@odatatype('#microsoft.graph.dateTimeTimeZone');

$end->setDateTime('2018-05-06T12:30:00.0000000+00:00');

$end->setTimeZone('UTC');


$requestBody->setEnd($end);
$invoiceDate = new DateTimeTimeZone();
$invoiceDate->set@odatatype('#microsoft.graph.dateTimeTimeZone');

$invoiceDate->setDateTime('2018-05-06T12:30:00.0000000+00:00');

$invoiceDate->setTimeZone('UTC');


$requestBody->setInvoiceDate($invoiceDate);
$start = new DateTimeTimeZone();
$start->set@odatatype('#microsoft.graph.dateTimeTimeZone');

$start->setDateTime('2018-05-06T12:00:00.0000000+00:00');

$start->setTimeZone('UTC');


$requestBody->setStart($start);


$result = $graphServiceClient->bookingBusinessesById('bookingBusiness-id')->appointmentsById('bookingAppointment-id')->patch($requestBody);


```