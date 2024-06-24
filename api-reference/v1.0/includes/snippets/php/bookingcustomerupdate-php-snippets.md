---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BookingCustomer;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingCustomer();
$requestBody->setOdataType('#microsoft.graph.bookingCustomer');
$requestBody->setDisplayName('Adele');
$requestBody->setEmailAddress('adele@relecloud.com');

$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customers()->byBookingCustomerBaseId('bookingCustomerBase-id')->patch($requestBody)->wait();

```