---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingCustomer();
$requestBody->setDisplayName('Adele');

$requestBody->setEmailAddress('adele@relecloud.com');



$result = $graphServiceClient->bookingBusinessesById('bookingBusiness-id')->customersById('bookingCustomer-id')->patch($requestBody);


```