---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingCustomer();
$requestBody->setDisplayName('Adele');
$requestBody->setEmailAddress('adele@relecloud.com');

$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customers()->byBookingCustomerId('bookingCustomer-id')->patch($requestBody)->wait();

```