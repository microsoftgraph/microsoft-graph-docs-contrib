---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BookingAppointment;
use Microsoft\Graph\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingAppointment();
$requestBody->setOdataType('#microsoft.graph.bookingAppointment');
$additionalData = [
	'end' => [
		'@odata.type' => '#microsoft.graph.dateTimeTimeZone',
		'dateTime' => '2018-05-06T12:30:00.0000000+00:00',
		'timeZone' => 'UTC',
	],
	'start' => [
		'@odata.type' => '#microsoft.graph.dateTimeTimeZone',
		'dateTime' => '2018-05-06T12:00:00.0000000+00:00',
		'timeZone' => 'UTC',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->appointments()->byBookingAppointmentId('bookingAppointment-id')->patch($requestBody)->wait();

```