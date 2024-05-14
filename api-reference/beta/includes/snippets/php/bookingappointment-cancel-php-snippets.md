---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CancelPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CancelPostRequestBody();
$requestBody->setCancellationMessage('Your appointment has been successfully cancelled. Please call us again.');

$graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->appointments()->byBookingAppointmentId('bookingAppointment-id')->cancel()->post($requestBody)->wait();

```