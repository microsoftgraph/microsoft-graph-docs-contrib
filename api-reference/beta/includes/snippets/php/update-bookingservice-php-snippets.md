---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\BookingService;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingService();
$requestBody->setOdataType('#microsoft.graph.bookingService');
$requestBody->setDefaultDuration(new \DateInterval('PT30M'));

$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->services()->byBookingServiceId('bookingService-id')->patch($requestBody)->wait();

```