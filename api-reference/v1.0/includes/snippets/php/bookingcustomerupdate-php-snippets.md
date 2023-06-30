---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingCustomer();
$requestBody->set@odatatype('#microsoft.graph.bookingCustomer');

$requestBody->setDisplayName('Adele');

$requestBody->setEmailAddress('adele@relecloud.com');



$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinesseId('bookingBusiness-id')->customers()->byCustomerId('bookingCustomerBase-id')->patch($requestBody);


```