---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingCustomer();
$requestBody->setOdataType('#microsoft.graph.bookingCustomer');

$requestBody->setDisplayName('Adele');

$requestBody->setEmailAddress('adele@relecloud.com');



$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customers()->byBookingCustomerBaseId('bookingCustomerBase-id')->patch($requestBody);


```