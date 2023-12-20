---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingCustomer();
$requestBody->setDisplayName('Adele');
$requestBody->setEmailAddress('adele@relecloud.com');

$result = $graphServiceClient->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customers()->byBookingCustomerId('bookingCustomer-id')->patch($requestBody)->wait();

```